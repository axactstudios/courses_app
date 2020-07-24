import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:coursesapp/Screens/AllCategories.dart';
import 'package:coursesapp/Screens/CategoryCourses.dart';
import 'package:coursesapp/Widgets/CourseDetails.dart';
import 'package:coursesapp/Widgets/CourseTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'AllCourses.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
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
      appBar: MyAppBar(context, kPrimaryColor),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: kTextColor.withOpacity(0.75),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllCategories(
                                allCategories: categories,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'SEE ALL',
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              color: kTextColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.015,
                ),
                Container(
                  width: pWidth,
                  height: pHeight * 0.045,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, index) {
                        var item = categories[index];

                        return InkWell(
                          onTap: () {
                            pushNewScreen(context, screen: CategoryCourses());
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: kTextColor.withOpacity(0.1),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                item,
                                style: TextStyle(
                                    fontFamily: 'Cabin',
                                    fontSize: pHeight * 0.02),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Text(
                  'Top courses in ${categories[0]}',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      color: kTextColor.withOpacity(0.75),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: pHeight * 0.015,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                              price: 499,
                              title:
                                  'Get started with Designing : A complete beginner\'s guide.',
                              rating: 4.7,
                              ratings: 17564,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title: 'Get started with Designing',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                              price: 699,
                              title:
                                  'Get started with Programming : Learn concepts of programming from scratch',
                              rating: 4.3,
                              ratings: 16445,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                          price: 699,
                          title: 'Get started with Programming',
                          rating: 4.3,
                          ratings: 16445,
                        ),
                      ),
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
                        child: CourseTile(
                          imgUrl:
                              'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
                          price: 399,
                          title: 'Complete guide to Facebook',
                          rating: 4.8,
                          ratings: 164,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Text(
                  'Top courses in ${categories[1]}',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      color: kTextColor.withOpacity(0.75),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: pHeight * 0.015,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                              price: 499,
                              title:
                                  'Get started with Designing : A complete beginner\'s guide.',
                              rating: 4.7,
                              ratings: 17564,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title: 'Get started with Designing',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                              price: 699,
                              title:
                                  'Get started with Programming : Learn concepts of programming from scratch',
                              rating: 4.3,
                              ratings: 16445,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                          price: 699,
                          title: 'Get started with Programming',
                          rating: 4.3,
                          ratings: 16445,
                        ),
                      ),
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
                        child: CourseTile(
                          imgUrl:
                              'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
                          price: 399,
                          title: 'Complete guide to Facebook',
                          rating: 4.8,
                          ratings: 164,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Text(
                  'Top courses in ${categories[2]}',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      color: kTextColor.withOpacity(0.75),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: pHeight * 0.015,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                              price: 499,
                              title:
                                  'Get started with Designing : A complete beginner\'s guide.',
                              rating: 4.7,
                              ratings: 17564,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title: 'Get started with Designing',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                              price: 699,
                              title:
                                  'Get started with Programming : Learn concepts of programming from scratch',
                              rating: 4.3,
                              ratings: 16445,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                          price: 699,
                          title: 'Get started with Programming',
                          rating: 4.3,
                          ratings: 16445,
                        ),
                      ),
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
                        child: CourseTile(
                          imgUrl:
                              'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
                          price: 399,
                          title: 'Complete guide to Facebook',
                          rating: 4.8,
                          ratings: 164,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top courses in ${categories[3]}',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: kTextColor.withOpacity(0.75),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllCourses(),
                            ),
                          );
                        },
                        child: Text(
                          'SEE ALL',
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              color: kTextColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.015,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                              price: 499,
                              title:
                                  'Get started with Designing : A complete beginner\'s guide.',
                              rating: 4.7,
                              ratings: 17564,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://i.ytimg.com/vi/uVteeLDOlyk/maxresdefault.jpg',
                          price: 499,
                          title: 'Get started with Designing',
                          rating: 4.7,
                          ratings: 17564,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(
                              imgUrl:
                                  'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                              price: 699,
                              title:
                                  'Get started with Programming : Learn concepts of programming from scratch',
                              rating: 4.3,
                              ratings: 16445,
                            ),
                          ),
                        ),
                        child: CourseTile(
                          imgUrl:
                              'https://biteable.com/content/uploads/2017/07/Video-Thumbnails-sml-1280x995.55555555556-c-default.jpg',
                          price: 699,
                          title: 'Get started with Programming',
                          rating: 4.3,
                          ratings: 16445,
                        ),
                      ),
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
                        child: CourseTile(
                          imgUrl:
                              'https://www.shoutmeloud.com/wp-content/uploads/2015/02/Change-Facebook-Video-Thumbnail.jpg',
                          price: 399,
                          title: 'Complete guide to Facebook',
                          rating: 4.8,
                          ratings: 164,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
