import 'package:doctor_appointment/models/doctors.dart';

class Departments {
  final String name;
  final int numberOfDoctors;
  final String imageUrl;
  final String description;
  final List<Doctors> doctors;

  Departments(this.name, this.numberOfDoctors, this.imageUrl, this.description,
      this.doctors);

  static List<Departments> giveMeDepartments() {
    return [
      Departments(
          'Indhaha',
          1,
          'https://images.pexels.com/photos/269077/pexels-photo-269077.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
            'Ahmad Ali',
            'Waxaan ahay dhakhtar indhaha ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
            'https://images.pexels.com/photos/4173239/pexels-photo-4173239.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
            'Emergency',
            'Macaane'),
      ]),
      Departments(
          'Sheybaar',
          1,
          'https://images.pexels.com/photos/1170979/pexels-photo-1170979.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
            'Mustafa Ismail',
            'Waxaan ahay dhakhtar ku takhasusay sheybaar-ka oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
            'https://images.pexels.com/photos/4173239/pexels-photo-4173239.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
            'Ears',
            'Digfeer'),
      ]),
      Departments(
          'Qaliinka',
          1,
          'https://images.pexels.com/photos/162539/architecture-building-amsterdam-blue-sky-162539.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
            'Faisal Harun',
            'Waxaan ahay dhakhtar Qaliinka Wadnaha ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
            'https://images.pexels.com/photos/4173239/pexels-photo-4173239.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
            'nose',
            'Banaadir'),
      ]),
      Departments(
          'Kilyaha',
          1,
          'https://images.pexels.com/photos/273209/pexels-photo-273209.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
          'Jibril Abdullahi',
          'Waxaan ahay dhakhtar Kilyaha ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
          'https://images.pexels.com/photos/4173239/pexels-photo-4173239.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'Eyes',
          'Somali Syrian',
        ),
      ]),
      Departments(
          'Beerka',
          1,
          'https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
            'Bashir Yusuf',
            'Waxaan ahay dhakhtar Beerka ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
            'https://images.pexels.com/photos/4173239/pexels-photo-4173239.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
            'Kidney',
            'Yardemeli'),
      ]),
      Departments(
          'Caruurta',
          1,
          'https://images.pexels.com/photos/1774931/pexels-photo-1774931.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
            'Yahya Hussein',
            'Waxaan ahay dhakhtar Beerka ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
            'https://images.pexels.com/photos/4173239/pexels-photo-4173239.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
            'Liver',
            'Madina'),
      ]),
      Departments(
          'Covid-19',
          2,
          'https://images.pexels.com/photos/347141/pexels-photo-347141.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          'This is the hospital description', [
        Doctors(
            'Muhammad Liban',
            'Waxaan ahay dhakhtar Caruurta ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 8 sano',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Heart',
            'Aden Ade'),
        Doctors(
            'Faisal Adam',
            'Waxaan ahay dhakhtar Neefta iyo dheefshiidka ku takhasusay oo mudo dheer ku soo dhex jiray. Waxaan leeyahay khibrad badan. Waxaan dalka joogay ku dhawaad 15 sano',
            'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            'Scan',
            'Aden Ade'),
      ]),
    ];
  }
}
