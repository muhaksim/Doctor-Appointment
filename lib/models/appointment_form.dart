class Appointment {
  String _name;
  String _phone;
  String _hospital;
  String _doctor;
  Appointment(this._name, this._phone, this._hospital, this._doctor);
  String toParams() =>
      "?name=$_name&phone=$_phone&hospital=$_hospital&doctor=$_doctor";
}
