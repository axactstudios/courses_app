import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

AppBar MyAppBar(BuildContext context, Color bgColor) {
  return AppBar(
    backgroundColor: bgColor,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: InkWell(
          onTap: () {
            pushNewScreen(context, screen: LoginScreen(), withNavBar: false);
          },
          child: Text(
            'SIGN IN',
            style: TextStyle(
                fontFamily: 'Cabin', color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ],
  );
}
