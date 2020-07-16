import 'package:coursesapp/Classes/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = new TextEditingController(text: "");
  TextEditingController _passwordController =
      new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: pHeight * 0.35,
              width: pWidth * 0.17,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(pHeight * 0.3),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: pHeight * 0.35,
              width: pWidth * 0.17,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(pHeight * 0.3),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: pHeight * 0.08,
              width: pWidth * 0.35,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(pHeight * 0.3),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: pHeight * 0.08,
              width: pWidth * 0.35,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(pHeight * 0.3),
                ),
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontFamily: 'Cabin',
                        color: kTextColor.withOpacity(0.6),
                        fontSize: 32,
                        letterSpacing: 5),
                  ),
                  SizedBox(
                    height: pHeight * 0.03,
                  ),
                  Image.asset(
                    'assets/images/signup.png',
                    height: pHeight * 0.2,
                  ),
                  SizedBox(
                    height: pHeight * 0.05,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (!validator.email(value)) {
                        return 'Invalid email';
                      } else {
                        return null;
                      }
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: kTextColor.withOpacity(0.4), width: 1),
                        ),
                        hintText: 'Email address'),
                  ),
                  SizedBox(
                    height: pHeight * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (!validator.password(value)) {
                        return 'Invalid password';
                      } else {
                        return null;
                      }
                    },
                    controller: _passwordController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: kTextColor.withOpacity(0.4), width: 1),
                        ),
                        hintText: 'Password'),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: pHeight * 0.03,
                  ),
                  InkWell(
                    child: Container(
                      width: pWidth * 0.95,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 24,
                                color: Colors.white,
                                letterSpacing: 5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account?',
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            color: kTextColor.withOpacity(0.4),
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cabin',
                              color: kPrimaryColor,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
