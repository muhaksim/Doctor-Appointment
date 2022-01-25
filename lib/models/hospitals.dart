import 'package:doctor_appointment/models/doctors.dart';

class Hospitals {
  final String name;
  final int numberOfDoctors;
  final String imageUrl;
  final String description;
  final List<Doctors> doctors;

  Hospitals(this.name, this.numberOfDoctors, this.imageUrl, this.description,
      this.doctors);

  static List<Hospitals> giveMeHospitals() {
    return [
      Hospitals(
          'Macaane',
          1,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
            'Ahmad Ali',
            'I am a doctor',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Emergency',
            'Macaane'),
      ]),
      Hospitals(
          'Digfeer',
          1,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
            'Mustafa Ismail',
            'I am a doctor',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Ears',
            'Digfeer'),
      ]),
      Hospitals(
          'Banaadir',
          1,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
            'Faisal Harun',
            'I am a doctor. I skadlksadlaskx klsklsadalskd kdlkasdalskdas dkjalskdjaslkd kdnsakldnaslk kldaskldnasl',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'nose',
            'Banaadir'),
      ]),
      Hospitals(
          'Somali Syrian',
          1,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
          'Jibril Abdullahi',
          'I am a doctor',
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Eyes',
          'Somali Syrian',
        ),
      ]),
      Hospitals(
          'Yardemeli',
          1,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
            'Bashir Yusuf',
            'I am a doctor',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Kidney',
            'Yardemeli'),
      ]),
      Hospitals(
          'Madina',
          1,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
            'Yahya Hussein',
            'I am a doctor',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Liver',
            'Madina'),
      ]),
      Hospitals(
          'Aden Ade',
          2,
          'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'This is the hospital description', [
        Doctors(
            'Muhammad Liban',
            'I am a doctor',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Heart',
            'Aden Ade'),
        Doctors(
            'Faisal Adam',
            'I am a doctor',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Scan',
            'Aden Ade'),
      ]),
    ];
  }
}
