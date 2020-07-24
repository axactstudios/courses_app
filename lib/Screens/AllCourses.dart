import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:coursesapp/Widgets/AllCoursesTile.dart';
import 'package:coursesapp/Widgets/CourseDetails.dart';
import 'package:flutter/material.dart';

class AllCourses extends StatefulWidget {
  @override
  _AllCoursesState createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(context, kPrimaryColor),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    imgUrl:
                        'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
                    price: 399,
                    title:
                        'Complete guide to Facebook : Learn using social media the right way.',
                    rating: 4.8,
                    ratings: 164,
                  ),
                ),
              ),
              child: AllCoursesTile(
                imgUrl:
                    'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
                price: 399,
                title:
                    'Complete guide to Facebook : Learn using social media the right way.',
                rating: 4.8,
                ratings: 164,
              ),
            ),
            SizedBox(
              width: pWidth * 0.95,
              child: Divider(
                color: kTextColor.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
