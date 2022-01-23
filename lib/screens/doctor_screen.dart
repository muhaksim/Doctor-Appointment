import 'package:doctor_appointment/models/doctors.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  // const DoctorScreen({Key? key}) : super(key: key);
  final Doctors passedDoctor;

  const DoctorScreen({Key? key, required this.passedDoctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doctor screen'),
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
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1612531385446-f7e6d131e1d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  ),
                  Positioned(
                      top: 10,
                      left: 30,
                      child: Text(
                        'Welcome to ${passedDoctor.name}\'s section',
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
                Text(
                  'Description',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                Text(
                  '${passedDoctor.description}',
                  style: TextStyle(fontSize: 23),
                )
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Book Now',
                    style: TextStyle(fontSize: 30),
                  )))
        ],
      ),
    );
  }
}
