import 'package:doctor_appointment/models/departments.dart';
import 'package:doctor_appointment/models/doctors.dart';
import 'package:doctor_appointment/screens/form_screen.dart';
import 'package:doctor_appointment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  // const DoctorScreen({Key? key}) : super(key: key);
  final Doctors passedDoctor;
  final Departments passedDepartment;

  const DoctorScreen(
      {Key? key, required this.passedDoctor, required this.passedDepartment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 200,
              child: Stack(
                children: [
                  Image(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    image: NetworkImage(passedDoctor.imageUrl),
                  ),
                  Positioned(
                      top: 110,
                      left: 30,
                      child: Text(
                        'Dr. ${passedDoctor.name}',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w900),
                      )),
                ],
              )),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${passedDoctor.description}',
                  style: TextStyle(fontSize: 23),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormScreen(
                                  department: passedDepartment.name,
                                  doctor: passedDoctor.name,
                                )));
                  },
                  child: Text(
                    'Qabso Balan',
                    style: TextStyle(fontSize: 30),
                  )))
        ],
      ),
    );
  }
}
