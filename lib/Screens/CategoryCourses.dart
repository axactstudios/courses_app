import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:coursesapp/Widgets/CategoryCourseTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCourses extends StatefulWidget {
  @override
  _CategoryCoursesState createState() => _CategoryCoursesState();
}

class _CategoryCoursesState extends State<CategoryCourses> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(context, kPrimaryColor),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          CategoryCourseTile(
            imgURl: 'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
            title: 'Get started with Designing : A complete beginner\'s guide.',
            ratings: 14765,
            rating: 4.6,
          ),
          CategoryCourseTile(
            imgURl:
                'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
            title:
                'Get started with Programming : Learn concepts of programming from scratch',
            ratings: 165545,
            rating: 4.2,
          ),
          CategoryCourseTile(
            imgURl:
                'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
            title:
                'Complete guide to Facebook : Learn using social media the right way.',
            ratings: 7562,
            rating: 4.7,
          ),
        ],
      ),
    );
  }
}
