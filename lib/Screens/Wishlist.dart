import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:coursesapp/Widgets/CourseDetails.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'CategoryCourses.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<String> categories = [
    'Finance & Accounting',
    'IT & Software',
    'Development',
    'Business',
    'Office Productivity',
    'Design',
    'Marketing',
    'Lifestyle',
    'Personal Development',
    'Photography',
    'Music',
    'Health & Finance',
    'Teaching & Academics'
  ];
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
      body: SingleChildScrollView(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: pWidth * 0.98,
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: CourseDetails(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title:
                              'Get started with Designing : A complete beginner\'s guide.',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: pWidth * 0.98,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Course title 1',
                                style: TextStyle(
                                    fontFamily: 'Cabin',
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w600,
                                    fontSize: pHeight * 0.026),
                              ),
                              SizedBox(
                                height: pHeight * 0.006,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Instructor Name',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                  Text(
                                    'Category',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: CourseDetails(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title:
                              'Get started with Designing : A complete beginner\'s guide.',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: pWidth * 0.98,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Course title 2',
                                style: TextStyle(
                                    fontFamily: 'Cabin',
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w600,
                                    fontSize: pHeight * 0.024),
                              ),
                              SizedBox(
                                height: pHeight * 0.006,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Instructor Name',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                  Text(
                                    'Category',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: CourseDetails(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title:
                              'Get started with Designing : A complete beginner\'s guide.',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: pWidth * 0.98,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Course title 3',
                                style: TextStyle(
                                    fontFamily: 'Cabin',
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w600,
                                    fontSize: pHeight * 0.024),
                              ),
                              SizedBox(
                                height: pHeight * 0.006,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Instructor Name',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                  Text(
                                    'Category',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: CourseDetails(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title:
                              'Get started with Designing : A complete beginner\'s guide.',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: pWidth * 0.98,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Course title 4',
                                style: TextStyle(
                                    fontFamily: 'Cabin',
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w600,
                                    fontSize: pHeight * 0.024),
                              ),
                              SizedBox(
                                height: pHeight * 0.006,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Instructor Name',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                  Text(
                                    'Category',
                                    style: TextStyle(
                                        fontFamily: 'Cabin',
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w600,
                                        fontSize: pHeight * 0.022),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: pWidth * 0.98,
                        height: pHeight * 0.74,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Or browse by categories',
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  color: Colors.black.withOpacity(0.65),
                                  fontWeight: FontWeight.w600,
                                  fontSize: pHeight * 0.024),
                            ),
                            SizedBox(
                              height: pHeight * 0.004,
                            ),
                            Container(
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: categories.length,
                                  itemBuilder: (BuildContext context, index) {
                                    var item = categories[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: InkWell(
                                        onTap: () {
                                          pushNewScreen(
                                            context,
                                            screen: CategoryCourses(),
                                          );
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10, left: 20, bottom: 15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                item,
                                                style: TextStyle(
                                                  fontFamily: 'Cabin',
                                                  fontSize: pHeight * 0.017,
                                                  color: kTextColor
                                                      .withOpacity(0.7),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
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
        ),
      ),
    );
  }
}
