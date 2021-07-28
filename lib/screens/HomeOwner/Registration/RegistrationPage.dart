import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/Professional/ProfessionalHomeScreen.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/services/auth_services.dart';
import '../SignIn/homeowner_signin_screen.dart';

class RegistrationPage extends StatefulWidget {
  final String role;

  RegistrationPage({this.role});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isLoading = false;

  TextEditingController numberController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String phoneNumber, verificationId, smsCode;
  bool codeSent = false;

  @override
  Widget build(BuildContext context) {
    print(widget.role);
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
                          'enter your',
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
                          'mobile number',
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
                          'You will receive a 4 digit code to verify next',
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
                                  text: 'Enter your mobile number',
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
                             codeSent ?  InputField(
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
                                ): Container(),
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
                                      onPressed: () {
                                   //    codeSent ? AuthService().signInWithOTP(smsCode, verificationId) : verifyPhone(phoneNumber);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ProfessionalHomeScreen(
                                                )));
                                      },
                                      child : codeSent ? Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Color(0xFF5145C1),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ): Text(
                                        'Login',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Color(0xFF5145C1),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ),
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
                          'or sign in through',
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
                                'Already have an account ! ',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, HomeownerSignIn.id);
                                },
                                child: Text(
                                  'Sign In',
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
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
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
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProfessionalHomeScreen(
              )));
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