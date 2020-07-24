import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:coursesapp/Screens/AllCategories.dart';
import 'package:coursesapp/Widgets/AllCoursesTile.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'CategoryCourses.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = new TextEditingController(text: '');
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
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                        hintText: 'Search for courses',
                        suffixIcon: Icon(Icons.search)),
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
                                              color:
                                                  kTextColor.withOpacity(0.7),
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
    );
  }
}
