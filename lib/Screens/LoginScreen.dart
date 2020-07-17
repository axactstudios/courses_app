import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Other/NavigationBar.dart';
import 'package:coursesapp/Screens/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regexed_validator/regexed_validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              height: pHeight * 0.17,
              width: pWidth * 0.35,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(pHeight * 0.3),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: pHeight * 0.17,
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
                    'SIGN IN',
                    style: TextStyle(
                        fontFamily: 'Cabin',
                        color: kTextColor.withOpacity(0.6),
                        fontSize: 32,
                        letterSpacing: 5),
                  ),
                  SizedBox(
                    height: pHeight * 0.02,
                  ),
                  Image.asset(
                    'assets/images/login.png',
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
                    onTap: () {
                      if (_formKey.currentState.validate()) {
                        print('Validated');
                      }
                    },
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
                            'SIGN IN',
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
                    height: pHeight * 0.01,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            color: kTextColor.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: pHeight * 0.04,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBar(),
                          ),
                        ),
                        child: Text(
                          'Skip this step',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            color: kTextColor.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: pHeight * 0.04,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: pWidth * 0.4,
                        child: Divider(
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              color: kTextColor.withOpacity(0.65),
                              fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        width: pWidth * 0.4,
                        child: Divider(
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: pHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(pHeight * 0.5),
                            border: Border.all(
                              color: kTextColor.withOpacity(0.15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset('assets/images/facebook.png'),
                          ),
                          height: pHeight * 0.05,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(pHeight * 0.5),
                            border: Border.all(
                              color: kTextColor.withOpacity(0.15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                                'assets/images/brands-and-logotypes.png'),
                          ),
                          height: pHeight * 0.05,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(pHeight * 0.5),
                            border: Border.all(
                              color: kTextColor.withOpacity(0.15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset('assets/images/phone.png'),
                          ),
                          height: pHeight * 0.05,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: pHeight * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New here?',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
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
