import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_appointment/models/departments.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final String department;
  final String doctor;

  FormScreen({Key? key, required this.department, required this.doctor})
      : super(key: key);

  // const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Buuxi form-kaan',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Magaca',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 14))),
              controller: controller1,
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Taleefanka', border: OutlineInputBorder()),
              controller: controller2,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    final name = controller1.text;
                    final phone = controller2.text;
                    createUser(
                        name: name,
                        phone: phone,
                        department: department,
                        doctor: doctor);
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 30),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

void createUser(
    {required String name,
    required String phone,
    required String department,
    required String doctor}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc();
  final user = User(
      id: docUser.id,
      name: name,
      department: department,
      doctor: doctor,
      phone: phone);
  final json = user.toJson();
  await docUser.set(json);
}

class User {
  String id;
  final String name;
  final String phone;
  final String department;
  final String doctor;

  User(
      {this.id = '',
      required this.name,
      required this.phone,
      required this.doctor,
      required this.department});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'department': department,
        'doctor': doctor
      };
}
