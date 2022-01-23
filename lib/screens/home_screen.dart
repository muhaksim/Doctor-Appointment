import 'package:doctor_appointment/screens/hospital_screen.dart';
import 'package:flutter/material.dart';
import '../models/hospitals.dart';
import '../models/doctors.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  final hospitals = Hospitals.giveMeHospitals();

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
                        'BOOK\nNOW!',
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
                            builder: (context) => HospitalScreen(
                                  passedHospital: hospitals[index],
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
                              'https://images.unsplash.com/photo-1586773860418-d37222d8fce3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80'),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hospital: ${hospitals[index].name}',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                  'Doctors: ${hospitals[index].numberOfDoctors}',
                                  style: TextStyle(fontSize: 20))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: hospitals.length,
            ),
          ),
        ],
      ),
    );
  }
}
                
         
  

// child: Card(
//                     child: ListTile(
//                   title: Text(hospitals[index].name),
//                   subtitle: Text(
//                       'Doctors: ${hospitals[index].numberOfDoctors.toString()}'),
//                   trailing: Icon(Icons.arrow_forward_rounded),
//                 )),
