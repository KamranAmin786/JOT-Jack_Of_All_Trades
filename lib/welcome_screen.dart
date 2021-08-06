import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/screens/HomeOwner/Registration/RegistrationMethod.dart';
import 'package:easy_localization/easy_localization.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String role;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF5145C1),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "hello".tr().toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Center(
                    child: Text(
                      "text1".tr().toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.handyman,
                        size: 70.0,
                        color: Color(0xFF5145C1),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "text2".tr().toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 60.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            color: Colors.white,
                            child: Text(
                              "text3".tr().toString(),
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xFF5145C1),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              role = 'Homeowner';
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistrationMethod(
                                            role: role,
                                          )));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 50.0,
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            elevation: 10.0,
                            color: Colors.white,
                            child: Text(
                              "text4".tr().toString(),
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF5145C1),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              role = 'Professional';
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistrationMethod(
                                            role: role,
                                          )));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            InkWell(
                              child: Text(
                                'English (US)',
                                style: TextStyle(color: colorWhite),
                              ),
                              onTap: () {
                                context.locale = Locale('en', 'US');
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            InkWell(
                              child: Text(
                                'اردو',
                                style: TextStyle(color: colorWhite),
                              ),
                              onTap: () {
                                context.locale = Locale('ur', 'PK');
                              },
                            ),
                          ],
                        ),
                      ],
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
