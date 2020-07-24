import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(context, kPrimaryColor),
      backgroundColor: Colors.white,
      body: Container(
        width: pWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: pHeight * 0.006,
            ),
            Icon(
              Icons.account_circle,
              size: pHeight * 0.15,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: pHeight * 0.008,
            ),
            Text(
              'User\'s Name',
              style: TextStyle(
                fontFamily: 'Cabin',
                fontSize: 24,
                color: Colors.black.withOpacity(0.85),
              ),
            ),
            SizedBox(
              height: pHeight * 0.004,
            ),
            Text(
              'User\'s email address',
              style: TextStyle(
                fontFamily: 'Cabin',
                fontSize: 18,
                color: Colors.black.withOpacity(0.65),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
