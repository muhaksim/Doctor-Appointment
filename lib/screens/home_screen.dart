import 'package:flutter/material.dart';
import '../models/hospitals.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  final hospitals = Hospitals.giveMeHospitals();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Soo dhawoow'),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: Text(hospitals[index].title),
                subtitle: Text(hospitals[index].doctors.toString()),
                trailing: Icon(Icons.arrow_forward_rounded),
              ));
            },
            itemCount: hospitals.length,
          ),
        ));
  }
}
