import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/HomeownerInformationPage.dart';
import 'package:fyp/screens/HomeOwner/Registration/RegistrationPage.dart';
import 'package:fyp/screens/HomeOwner/SignIn/homeowner_signin_screen.dart';

class RegistrationMethod extends StatefulWidget {
  final String role;
  RegistrationMethod({this.role});
  @override
  _RegistrationMethodState createState() => _RegistrationMethodState();
}

class _RegistrationMethodState extends State<RegistrationMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 55.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 20.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF5145C1),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        Container(
                          width: 20.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFCDC8F5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'JOT',
                      style: TextStyle(
                          color: Color(0xFF736A8F),
                          fontSize: 25.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'find your fit',
                  style: TextStyle(
                      color: Color(0xFF504473),
                      fontSize: 28.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'handyman service',
                  style: TextStyle(
                      color: Color(0xFF504473),
                      fontSize: 28.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'High-quality workmanship at great prices',
                  style: TextStyle(
                    color: Color(0xFF736A8F),
                    fontSize: 15.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/worker3.jpg'),
                          maxRadius: 80.0,
                          minRadius: 30.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/Home-iage.png'),
                          maxRadius: 50.0,
                          minRadius: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/worker1.jpg'),
                        maxRadius: 50.0,
                        minRadius: 30.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/worker.jpg'),
                        maxRadius: 80.0,
                        minRadius: 30.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account ! ',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      FlatButton(
                        minWidth: 0.0,
                        height: 0.0,
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, HomeownerSignIn.id);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF5448C5),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          widget.role == 'Homeowner'
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomeownerInformationPage(
                                            role: widget.role,
                                          )))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistrationPage(
                                            role: widget.role,
                                          )));
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Sign up with Number',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          height: 55.0,
                        ),
                      ),
                      // sign up with Google
                      InkWell(
                        onTap: () {
                          //lets go
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Sign up with Google',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                            ),
                          ),
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
