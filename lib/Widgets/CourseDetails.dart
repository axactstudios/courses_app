import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatefulWidget {
  String imgUrl, title;
  int price, ratings;
  double rating;

  CourseDetails(
      {this.price, this.ratings, this.rating, this.title, this.imgUrl});
  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(
        context,
        Colors.black.withOpacity(0.7),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: pHeight * 0.45,
                width: pWidth,
                color: Colors.black.withOpacity(0.75),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Image.network(
                          widget.imgUrl,
                          height: pHeight * 0.2,
                          width: pWidth * 0.7,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: pHeight * 0.02,
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 26),
                      ),
                      SizedBox(
                        height: pHeight * 0.008,
                      ),
                      Text(
                        'Here goes the description of the course. Add two to three lines which describe the course content in brief.',
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: pHeight * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 0.9),
                                borderRadius:
                                    BorderRadius.circular(pHeight * 0.1),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: pHeight * 0.015,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '${widget.rating}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: pWidth * 0.03,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 0.9),
                                borderRadius:
                                    BorderRadius.circular(pHeight * 0.1),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: pHeight * 0.015,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '${widget.ratings}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: pWidth * 0.03,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 0.9),
                                borderRadius:
                                    BorderRadius.circular(pHeight * 0.1),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: pHeight * 0.015,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '17 total hours',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: pHeight * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 0.7),
                                borderRadius:
                                    BorderRadius.circular(pHeight * 0.1),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Created by Instructor\'s name',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: pWidth * 0.03,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 0.7),
                                borderRadius:
                                    BorderRadius.circular(pHeight * 0.1),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Course Languages',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/rupee.png',
                    height: pHeight * 0.02,
                  ),
                  Text(
                    widget.price.toString(),
                    style: TextStyle(fontSize: 28, fontFamily: 'Cabin'),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.015,
              ),
              Container(
                width: pWidth * 0.98,
                height: pHeight * 0.05,
                decoration: BoxDecoration(color: kPrimaryColor, boxShadow: [
                  BoxShadow(
                      color: kTextColor.withOpacity(0.5),
                      blurRadius: 2.0,
                      spreadRadius: 0.1)
                ]),
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'Cabin'),
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.005,
              ),
              Container(
                width: pWidth * 0.98,
                height: pHeight * 0.05,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: kTextColor.withOpacity(0.5), width: 0.5),
                  boxShadow: [
                    BoxShadow(
                        color: kTextColor.withOpacity(0.5),
                        blurRadius: 3.0,
                        spreadRadius: 0.2)
                  ],
                ),
                child: Center(
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: kTextColor.withOpacity(0.75),
                        fontSize: 16,
                        fontFamily: 'Cabin'),
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.015,
              ),
              Card(
                margin: EdgeInsets.only(bottom: pHeight * 0.02),
                elevation: 4,
                child: Container(
                  width: pWidth * 0.98,
                  height: pHeight * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'This course includes',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kTextColor.withOpacity(0.75),
                          ),
                        ),
                        SizedBox(
                          height: pHeight * 0.005,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.play_arrow,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              '17 total hours on-demand video',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pHeight * 0.002,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.insert_drive_file,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              'Support files',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pHeight * 0.002,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.library_books,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              'Articles',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 16,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pHeight * 0.002,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.assignment,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              'Assignments',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pHeight * 0.002,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.access_time,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              'Lifetime access',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pHeight * 0.002,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.phone_iphone,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              'Access anywhere',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: pHeight * 0.002,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.pages,
                              color: kTextColor.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: pWidth * 0.05,
                            ),
                            Text(
                              'Certificate of completion',
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18,
                                color: kTextColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: pHeight * 0.02),
                elevation: 4,
                child: Container(
                  width: pWidth * 0.98,
                  height: pHeight * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'What will you learn?',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kTextColor.withOpacity(0.75),
                          ),
                        ),
                        SizedBox(
                          height: pHeight * 0.005,
                        ),
                        Text(
                          'Here goes a 7-8 lines description of the course and will explain to the user how this course will benefit them and how it is more useful and beneficial than other similar courses out there. This will help you to attract students towards your courses and will encourage them to buy your course. Please explain in brief all the good features and great teaching techniques that you have used in your course which will help the student understand the complex concepts easily. Please spend some time framing this small description as it will play a key role in increasing the sales of your course.',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 18,
                            color: kTextColor.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
