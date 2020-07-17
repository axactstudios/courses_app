import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  List<String> allCategories = [];
  AllCategories({this.allCategories});

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(context, kPrimaryColor),
      body: ListView.builder(
          itemCount: widget.allCategories.length,
          itemBuilder: (BuildContext context, index) {
            var item = widget.allCategories[index];
            return Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: InkWell(
                onTap: () {
                  print('$item Tapped');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 20, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item,
                        style: TextStyle(
                          fontFamily: 'Cabin',
                          fontSize: 15,
                          color: kTextColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
