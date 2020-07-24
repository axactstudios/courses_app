import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  String title;

  VideoScreen({this.title});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(
        context,
        kPrimaryColor,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: pHeight * 0.3,
            width: pWidth,
            color: Colors.black,
            child: Center(
              child: Text(
                'Video Player',
                style: TextStyle(
                    fontFamily: 'Cabin',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 26),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: pWidth * 0.98,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.65),
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: pHeight * 0.006,
                    ),
                    Text(
                      'Instructor Name',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: pHeight * 0.002,
                    ),
                    Text(
                      'Course Name',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: pWidth * 0.98,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'List of related documents',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      'or some relevant theory',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      'or some other helpful resources',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      'such as links to a website or',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      'something like that',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      'will be displayed here',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
