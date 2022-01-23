import 'package:doctor_appointment/models/doctors.dart';
import 'package:doctor_appointment/models/hospitals.dart';
import 'package:doctor_appointment/screens/doctor_screen.dart';
import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  // const HospitalScreen({ Key? key }) : super(key: key);
  final Hospitals passedHospital;
  // final Doctors passedDoctors;
  final doctors = Doctors.giveMeDoctors();

  HospitalScreen({
    Key? key,
    required this.passedHospital,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soo dhawoow'),
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
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  ),
                  Positioned(
                      top: 10,
                      left: 30,
                      child: Text(
                        'Welcome to ${passedHospital.name}',
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
                                  passedDoctor: doctors[index],
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
                              'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${doctors[index].name}',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('${doctors[index].area}',
                                  style: TextStyle(fontSize: 20))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: doctors.length,
            ),
          ),
        ],
      ),
    );
  }
}
