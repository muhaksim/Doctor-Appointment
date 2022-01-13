import 'package:doctor_appointment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soo dhawoow'),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Si fudud Dhaqtarka aa rabto u qabso',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    'Bilow isticmaalka',
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
