import 'package:doctor_appointment/patient.dart';
import 'package:gsheets/gsheets.dart';

class PatientSheetApi {
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "gsheets-340114",
  "private_key_id": "7654871e0d2540673d87c5825c14b63ab8bf854e",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDDpKboPCuXQ+wy\nWOGgAJdrwtxiE8D3rd8WwMWxLPshIzo3Wfmb9Ros9Rso+2Kn79NDd+6LpYxnl+30\np36E2/OjpHUrr9BHg6iyqddyWEpQAAAwC2XgFkIz2H3onnjEDqJKrx/cZMPTLaNs\n1oQmgv6KpW8RUt+0RMbBE7ctreJ+mG8NT4J2vR7FvM3MRX0sUP93fetxzdQyrl8i\nHUiR1gl0TumVtA+7EEVYr5vyXPvnP/i5Q9zUGLiqFyKtw2spwiN2f0N0xvWseiBk\n1W7xQDAwv7MLlN2V8Qx0sU2taG8bFiW+rcP5oQnSIzj4QnS/GWw8qA3BriyeTRIv\n59HB/lXRAgMBAAECggEACL/U7osdVHIXTq+apIQOQYWZA0JYpYL3OH5lwO0O7I4V\noQrTLsI0+dh6ztgCMxo2t5xWFNTyHOJmpAO3FOQ8xr9YtZvS29XjnhzaG50e8qmz\nWHK0C0PXkVe/1r66jiMM5zvieAHiH5A5kCkeRxYh4cuw9kR/aGGQhWs3LJHrkId2\n3sKQE3raNC2OaWxzTTj8yK0j6oUef4utI79D85n/RoT50uVoauwAhDAGPO/tJK/k\nLaLBYvamTBpE7OkY1op0G8T0q/8Vf5gB9/DgxsJOyS/OzLfWD3J0LtaaeWGzzf8L\nI/bp9wlUt3AxX0HexXN3W/9//WOgeWdJTVByU4RDWQKBgQDl1xU+DasqFL3Qj1GG\ndcGxn2wSk++W6XeqOa5UcuQB46LOohbS4SpSHOKbakq2tQG8UypR1Mjf4H97W8NQ\nn1Zp+QG1CyyNLD2ii87axf4ERVuQJplCQLFpmtYA4QHeYVTQg4V5gP9zVbvkKObd\nwU9Ybl9Wvx2861a5OQbZZDR+uQKBgQDZ6SlegyCXkSsifi3/D7b4L+F+OzSAuXiB\nci+tCzh8GuARZf7MKv66oLbrxLU1BDVylWzbrMcbGABbaXNpTcQumgOjLuUwDIvL\n11uRuOS6tW+aBWi4n61PNq4rYQaypGP7H0R3U+Mm0ABpIhjM6Qu5NZgD34oKDC9r\nyiACwLjD2QKBgQCFR/h1h4+eU3DPJIzuIBM2YXBWRZtGNBTEjbZeGlHGFq8ujCgY\nGaJlA4MVBMpWsRhUkRWVZoMl8BV8/3V/pyaBRXiL9/LZ2rHTNKe7jd0DtQSnzvpI\nxSMcTkGTOOfQgTihweMA1qFLzIesg1t9dMACU97Nev5Ps1kTB9LE9arLYQKBgGFD\nVRe+Z5m/TgWDVHx4Qy7cEEYLnw+luUft86HFVFzwkfqyD9yJhFFA0uTBVDBpxIF0\neLZElEpfmCk1FDJ4Z4x1ahI4KEweDXfalCCi6lT8DugsaeWeP/kPawYptJegEJBS\nEHlClC0KwmQqt+8eRgFRDp0L9c0uSyxNd6RC6TVhAoGAZUI5kJg0OpHOSOJbciIs\nNHcrjGPPwqTU9qKQZOFo/wdFgkRL7Al1ws5WoSHeY0PZ49cEcxBRGN57gzMJurzt\n6TL+vJM3hvMj/MRo/bZEaahqNrZ1h4rKXyl8p+ExcJ7lZXICraa0Re64NFNlMoVL\nDAaUV319x60LyhSC4rivUAg=\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@gsheets-340114.iam.gserviceaccount.com",
  "client_id": "110117279795789550947",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40gsheets-340114.iam.gserviceaccount.com"
}

''';
  static final _spreadsheetId = '1jeoN1b-BKWF5YC1Hv8qRujJRzyQ2A08Zo3Xv1yG6ouU';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _patientSheet;

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
      _patientSheet = await _getWorkSheet(spreadsheet, title: 'Patients');
      final firstRow = PatientFields.getFields();
      _patientSheet!.values.insertRow(1, firstRow);
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_patientSheet == null) return;
    _patientSheet!.values.map.appendRows(rowList);
  }
}
