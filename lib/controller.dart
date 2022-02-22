import 'dart:convert' as convert;
import 'package:doctor_appointment/models/appointment_form.dart';
import 'package:http/http.dart' as http;

class FormController {
  final void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbz0lINWM_2hESNvCM5x3LSTQ_uy0Ej2fTPxSrGBoB-Opk8hshFxo_JpahCxU3tae5Wo/exec";

  static const STATUS_SUCCESS = "SUCCESS";

  FormController(this.callback);
  // Uri.parse((URL + appointment.toParams()).toString())

  void submitForm(Appointment appointment) async {
    try {
      await http.get(Uri.parse(URL + appointment.toParams())).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print('This is the error brother ${e}');
    }
  }

  // void submitForm(Appointment appointment) async {
  //   try {
  //     await http.get(Uri.parse(URL + appointment.toParams())).then((response) {
  //       callback(convert.jsonDecode(response.body)['status']);
  //     });
  //   } catch (e) {
  //     print('This is the error ${e}');
  //   }
  // }
}
