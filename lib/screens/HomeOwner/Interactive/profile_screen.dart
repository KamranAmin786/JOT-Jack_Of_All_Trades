import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/navigator.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    subtitle: '',
                    icon: Icon(Icons.account_circle_outlined),
                  ),
                  ProfileScreenItems(
                    title: 'Mobile number',
                    subtitle: '+923022272789',
                    icon: Icon(Icons.phone_android_outlined),
                  ),
                  ProfileScreenItems(
                    title: 'Email',
                    subtitle: 'kamranaminch@gmail.com',
                    icon: Icon(Icons.mail_outline),
                  ),
                  ProfileScreenItems(
                    title: 'Gender',
                    subtitle: 'Male',
                    icon: Icon(Icons.supervised_user_circle),
                  ),
                  ProfileScreenItems(
                    title: 'Date of birth',
                    subtitle: '14 April 1999',
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
                  ProfileItemsOnlyTitle(
                    title: 'Rate the App',
                    icon: Icon(Icons.rate_review_outlined),
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
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
