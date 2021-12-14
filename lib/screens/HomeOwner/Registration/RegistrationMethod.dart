import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fyp/navigator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationMethod extends StatefulWidget {
  final String role;

  RegistrationMethod({this.role});

  @override
  _RegistrationMethodState createState() => _RegistrationMethodState();
}

class _RegistrationMethodState extends State<RegistrationMethod> {
  final firebase = FirebaseFirestore.instance;

  GoogleSignInAccount _userObj;

  // GoogleSignIn _googleSignIn = GoogleSignIn();

  bool isLoggedIn = false;
  String name;
  String profile;
  String email;
  bool isLoading = false;
  String userUid;
  bool existsHomeowner = false;
  bool existsProfessional = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    saveYourData(widget.role);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
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
                              backgroundImage:
                                  AssetImage('images/Home-iage.png'),
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
                    SizedBox(
                      height: 40,
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
                                              RegistrationPage(
                                                role: widget.role,
                                              )))
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegistrationPage(
                                                role: widget.role,
                                              )));
                            },
                            child: Container(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "text10".tr().toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              height: 55.0,
                            ),
                          ),
                          // sign up with Google
                          widget.role == 'Professional'
                              ? Container()
                              : InkWell(
                                  onTap: () async {
                                    _googleSignIn();
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
    );
  }

  static Future<bool> saveYourData(String role) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString('role', role);
  }

  _googleSignIn() async {
    final googleSignIn = GoogleSignIn();
    setState(() {
      isLoading = true;
    });
    final signInAccount = await googleSignIn.signIn();

    final googleAccountAuthentication = await signInAccount.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAccountAuthentication.accessToken,
        idToken: googleAccountAuthentication.idToken);

    await FirebaseAuth.instance.signInWithCredential(credential);

    if (FirebaseAuth.instance.currentUser != null) {
      print('Google Authentication Successful');
      setState(() {
        email = FirebaseAuth.instance.currentUser.email;
        name = FirebaseAuth.instance.currentUser.displayName;
        userUid = FirebaseAuth.instance.currentUser.uid;
      });
      print('${FirebaseAuth.instance.currentUser.displayName} signed in.');
      print('${FirebaseAuth.instance.currentUser.phoneNumber} phone number.');
      print('${FirebaseAuth.instance.currentUser.email} phone number.');

      await checkIfHomeowner();

      widget.role == 'Homeowner' && existsHomeowner
          ? Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => BottomNavigator()))
          : Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeownerDataPage(
                        nameUser: name,
                        emailUser: email,
                        userUid: userUid,
                      )));

      setState(() {
        isLoggedIn = false;
        showScaffold(context, 'Google account fetched');
      });
    } else {
      showScaffold(context, 'Error While Logging In');
    }
  }

  checkIfHomeowner() async {
    DocumentSnapshot ds =
        await firebase.collection("Homeowner").doc('$userUid').get();
    setState(() {
      existsHomeowner = ds.exists;
    });
  }
}
