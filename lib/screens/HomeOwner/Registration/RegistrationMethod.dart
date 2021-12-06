import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fyp/navigator.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegistrationMethod extends StatefulWidget {
  final String role;
  RegistrationMethod({this.role});
  @override
  _RegistrationMethodState createState() => _RegistrationMethodState();
}

class _RegistrationMethodState extends State<RegistrationMethod> {

  GoogleSignInAccount _userObj;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  bool isLoggedIn = false;
  String name;
  String profile;
  String email;

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
                  "text5".tr().toString(),
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
                  "text6".tr().toString(),
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
                  "text7".tr().toString(),
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
                        "text8".tr().toString(),
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      FlatButton(
                        minWidth: 0.0,
                        height: 0.0,
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "text9".tr().toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeownerSignIn()));
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
                                      builder: (context) => RegistrationPage(
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
                              "text10".tr().toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          height: 55.0,
                        ),
                      ),
                      // sign up with Google
                      InkWell(
                        onTap: ()async {
                          _googleSignIn.signIn().then((userData) {
                            setState(() {
                              _userObj = userData;
                              profile = userData.photoUrl.toString();
                              name = userData.displayName.toString();
                              email = userData.email;
                            });
                            if (userData != null) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfessionalHomeScreen())
                              );
                            }
                          }).catchError((e) {
                            print(e);
                          });
                          print(name);
                          print(email);
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "text11".tr().toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
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

  // _googleSignIn() async {
  //   final googleSignIn = GoogleSignIn();
  //   final signInAccount = await googleSignIn.signIn();
  //
  //   final googleAccountAuthentication = await signInAccount.authentication;
  //
  //   final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAccountAuthentication.accessToken,
  //       idToken: googleAccountAuthentication.idToken);
  //
  //   await FirebaseAuth.instance.signInWithCredential(credential);
  //
  //   if (FirebaseAuth.instance.currentUser != null) {
  //     print('Google Authentication Successful');
  //     print('${FirebaseAuth.instance.currentUser.displayName} signed in.');
  //     print('${FirebaseAuth.instance.currentUser.phoneNumber} phone number.');
  //     print('${FirebaseAuth.instance.currentUser.email} phone number.');
  //     widget.role == 'Homeowner'
  //         ? Navigator.push(context,
  //             MaterialPageRoute(builder: (context) => BottomNavigator()))
  //         : Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => ProfessionalHomeScreen()));
  //
  //     setState(() {
  //       isLoggedIn = true;
  //       name = FirebaseAuth.instance.currentUser.displayName;
  //     });
  //   } else {
  //     print('Unable to sign in');
  //   }
  // }
}
