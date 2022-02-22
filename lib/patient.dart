class PatientFields {
  static final String id = 'id';
  static final String name = 'name';
  static final String phone = 'phone';
  static final String hospital = 'hospital';
  static final String doctor = 'doctor';

  static List<String> getFields() => [id, name, phone, hospital, doctor];
}

class Patient {
  final int? id;
  final String name;
  final String phone;
  final String hospital;
  final String doctor;

  const Patient(
      {this.id,
      required this.name,
      required this.phone,
      required this.hospital,
      required this.doctor});

  Map<String, dynamic> toJson() => {
        PatientFields.id: id,
        PatientFields.name: name,
        PatientFields.phone: phone,
        PatientFields.hospital: hospital,
        PatientFields.doctor: doctor
      };
}
