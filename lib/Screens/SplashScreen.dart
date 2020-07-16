import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Screens/IntroScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    new Future.delayed(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/student.png',
                  height: pHeight * 0.26,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
