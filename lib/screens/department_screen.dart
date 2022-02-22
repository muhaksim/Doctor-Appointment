import 'package:doctor_appointment/models/doctors.dart';
import 'package:doctor_appointment/models/departments.dart';
import 'package:doctor_appointment/screens/doctor_screen.dart';
import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  // const HospitalScreen({ Key? key }) : super(key: key);
  final Departments passedDepartment;
  // final Doctors passedDoctors;
  // final doctors = Doctors.giveMeDoctors();

  HospitalScreen({
    Key? key,
    required this.passedDepartment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(passedDepartment.name),
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              child: Stack(
                children: [
                  Image(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    image: NetworkImage(passedDepartment.imageUrl),
                  ),
                  Positioned(
                      top: 110,
                      left: 30,
                      child: Text(
                        '  Qeybta ${passedDepartment.name}',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w900),
                      ))
                ],
              )),
          Container(
            height: 460,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorScreen(
                                  passedDepartment: passedDepartment,
                                  passedDoctor: passedDepartment.doctors[index],
                                )));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image(
                          height: 140,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              passedDepartment.doctors[index].imageUrl),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${passedDepartment.doctors[index].name}',
                                style: TextStyle(fontSize: 20),
                              ),
                              // Text('${passedDepartment.doctors[index].}',
                              //     style: TextStyle(fontSize: 20))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: passedDepartment.doctors.length,
            ),
          ),
        ],
      ),
    );
  }
}
