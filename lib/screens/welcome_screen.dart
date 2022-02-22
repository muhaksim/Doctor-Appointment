import 'package:doctor_appointment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: TextStyle(
                  // color: Colors.teal.shade300,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
                padding: EdgeInsets.symmetric(),
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soo dhawoow'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
                color: Color(0xff61acd4),
                urlImage: 'assets/images/find.jpg',
                title: 'Qabso dhakhtar',
                subtitle: 'Waqti dambe ha iska dhumin'),
            buildPage(
                color: Color(0xff61acd4),
                urlImage: 'assets/images/time.jpg',
                title: 'Waqtigaaga keydi',
                subtitle: 'Waqti dambe ha iska dhumin'),
            buildPage(
                color: Color(0xff61acd4),
                urlImage: 'assets/images/line.jpg',
                title: 'Saf dambe ha galin',
                subtitle: 'Lacagta ayaa kuu baaqanayso, safna ma galaysid.'),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Colors.white,
                  backgroundColor: Colors.teal.shade800,
                  minimumSize: Size.fromHeight(80)),
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                // final prefs = await SharedPreferences.getInstance();
                // prefs.setBool('showHome', true);
              },
              child: Text(
                'Bilow Isticmaalka',
                style: TextStyle(fontSize: 20),
              ))
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => controller.jumpToPage(2),
                      child: Text('SKIP')),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                    ),
                  ),
                  TextButton(
                      onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: Text('NEXT'))
                ],
              ),
            ),
    );
  }
}
