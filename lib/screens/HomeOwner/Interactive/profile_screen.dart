import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  String name;
  String phoneNumber;
  String gender;
  String email;
  String dateOfBirth;

  @override
  void initState()  {
    // TODO: implement initState
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('SETTINGS'),
        backgroundColor: kAppBarColor,
      ),
      body: Container(
        color: kAppBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: kProfileScreenHeadingColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ProfileScreenItems(
                    title: 'Name',
                    subtitle: name,
                    icon: Icon(Icons.account_circle_outlined),
                  ),
                  ProfileScreenItems(
                    title: 'Mobile number',
                    subtitle: phoneNumber,
                    icon: Icon(Icons.phone_android_outlined),
                  ),
                  InkWell(
                    child: ProfileScreenItems(
                      title: 'Email',
                      subtitle: email,
                      icon: Icon(Icons.mail_outline),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangeEmailAddressView()));
                    },
                  ),
                  ProfileScreenItems(
                    title: 'Gender',
                    subtitle: gender,
                    icon: Icon(Icons.supervised_user_circle),
                  ),
                  ProfileScreenItems(
                    title: 'Date of birth',
                    subtitle: dateOfBirth,
                    icon: Icon(Icons.calendar_today_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'General',
                      style: TextStyle(
                        color: kProfileScreenHeadingColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ProfileScreenItems(
                    title: 'Language',
                    subtitle: 'English',
                    icon: Icon(Icons.language),
                  ),
                  GestureDetector(
                    onTap: () {
                      signOut();
                    },
                    child: ProfileItemsOnlyTitle(
                      title: 'Log Out',
                      icon: Icon(Icons.logout),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  signOut() async {
   await _firebaseAuth.signOut();
   _globalKey.currentState.showSnackBar(
     SnackBar(
       content: Text('Logged Out'),
     ),
   );
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
  Future<String> getUserData() async {
    SharedPreferences preferencesHomeowner = await SharedPreferences.getInstance();
    setState(() {
      name = preferencesHomeowner.getString('userName');
      phoneNumber = preferencesHomeowner.getString('phoneNumber');
      email = preferencesHomeowner.getString('email');
      dateOfBirth = preferencesHomeowner.getString('birthDate');
      gender = preferencesHomeowner.getString('gender');
    });
    return preferencesHomeowner.getString('userName');
  }
}
