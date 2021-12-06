import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/Professional/ProfessionalHomeScreen.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/screens/HomeOwner/Registration/HomeownerDataPage.dart';
import 'package:fyp/screens/HomeOwner/Registration/ProfessionalDataPage.dart';
import '../SignIn/homeowner_signin_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class RegistrationPage extends StatefulWidget {
  final String role;

  RegistrationPage({this.role});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isLoading = false;
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController numberController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String phoneNumber, verificationId, smsCode;
  bool codeSent = false;
  String userUid = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF5145C1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
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
                                    color: Color(0xFFCDC8F5),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.5,
                                ),
                                Container(
                                  width: 20.0,
                                  height: 5.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
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
                                  color: colorWhite,
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
                          "text12".tr().toString(),  // enter your
                          style: TextStyle(
                              color: colorWhite,
                              fontSize: 28.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "text13".tr().toString(), //mobile number
                          style: TextStyle(
                              color: colorWhite,
                              fontSize: 28.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "text14".tr().toString(), // You will receive a 4 digit code to verify next
                          style: TextStyle(
                            color: colorWhite,
                            fontSize: 15.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InputField(
                                  text: "text15".tr().toString(),  //Enter your mobile number
                                  icon: Icons.phone,
                                  controller: numberController,
                                  type: TextInputType.phone,
                                  validator: validateMobile,
                                  onPressed: (val) {
                                    setState(() {
                                      this.phoneNumber = val;
                                    });
                                  },
                                ),
                                codeSent
                                    ? InputField(
                                        text: 'Enter OTP',
                                        icon: FontAwesomeIcons.key,
                                        controller: otpController,
                                        type: TextInputType.phone,
                                        validator: validateMobile,
                                        onPressed: (val) {
                                          setState(() {
                                            this.smsCode = val;
                                          });
                                        },
                                      )
                                    : Container(),
                                SizedBox(
                                  height: 30.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 40.0),
                                  child: SizedBox(
                                    height: 55.0,
                                    width: 250.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0)),
                                        color: Colors.white,
                                        onPressed: () async {
                                          // var user = _firebaseAuth.currentUser;
                                          setState(() {
                                            userUid = 'kamran';
                                          });
                                          //    codeSent ? AuthService().signInWithOTP(smsCode, verificationId) : verifyPhone(phoneNumber);
                                          widget.role == 'Homeowner'
                                              ? Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeownerDataPage(
                                                            role: widget.role,
                                                            phoneNumber:
                                                                phoneNumber,
                                                            userUid: userUid,
                                                          )))
                                              : Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfessionalDataPage(
                                                            role: widget.role,
                                                            phoneNumber:
                                                                phoneNumber,
                                                          )));
                                        },
                                        child: codeSent
                                            ? Text(
                                                'Sign Up',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color(0xFF5145C1),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            : Text(
                                                "text16".tr().toString(),  // Login
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color(0xFF5145C1),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "text17".tr().toString(), // or sign in through
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SignInButtonBuilder(
                                backgroundColor: Colors.red,
                                onPressed: () {},
                                mini: true,
                                text: 'Google',
                                icon: FontAwesomeIcons.google,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "text8".tr().toString(),
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeownerSignIn()));
                                },
                                child: Text(
                                  "text9".tr().toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              isLoading
                  ? Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      color: Colors.black38,
                      child: Center(
                          child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.white),
                      )),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> verifyPhone(phoneNumber) async {
    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential authResult) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProfessionalHomeScreen()));
    };

    final PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException firebaseAuthException) {
      print('${firebaseAuthException.message}');
    };

    final PhoneCodeSent codeSent = (String verId, [int forceResend]) {
      this.verificationId = verId;
      setState(() {
        this.codeSent = true;
      });
    };
    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verId) {
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
  }
}

// widget.role == 'Professional' ?
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => ProfessionalHomeScreen(
// ))):
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => BottomNavigator(
// )));

// codeSent
//     ? TextFormField(
//   keyboardType: TextInputType.phone,
//   textAlign: TextAlign.center,
//   decoration: InputDecoration(
//     filled: true,
//     fillColor: Colors.white,
//     hintText: ' Enter OTP',
//     border: OutlineInputBorder(
//       borderRadius:
//       BorderRadius.circular(25.0),
//     ),
//   ),
//   onChanged: (val) {
//     this.smsCode = val;
//   },
// )
//     : Container(),
