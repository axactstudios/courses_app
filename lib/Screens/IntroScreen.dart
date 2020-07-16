import 'package:coursesapp/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "e-LEARNING SLIDE 1",
        description: "Here goes the description",
        styleTitle:
            TextStyle(fontFamily: 'Cabin', fontSize: 30, color: Colors.white),
        styleDescription:
            TextStyle(fontFamily: 'Cabin', fontSize: 18, color: Colors.white),
        pathImage: "assets/images/elearning(1).png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "e-LEARNING SLIDE 2",
        description: "Here we will add more text content",
        styleTitle:
            TextStyle(fontFamily: 'Cabin', fontSize: 30, color: Colors.white),
        styleDescription:
            TextStyle(fontFamily: 'Cabin', fontSize: 18, color: Colors.white),
        pathImage: "assets/images/elearning.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "e-LEARNING SLIDE 3",
        styleTitle:
            TextStyle(fontFamily: 'Cabin', fontSize: 30, color: Colors.white),
        styleDescription:
            TextStyle(fontFamily: 'Cabin', fontSize: 18, color: Colors.white),
        description: "Here we will be adding more text",
        pathImage: "assets/images/teacher.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      isShowPrevBtn: true,
      isShowSkipBtn: false,
      onDonePress: this.onDonePress,
    );
  }
}
