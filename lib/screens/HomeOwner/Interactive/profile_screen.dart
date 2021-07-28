import 'package:flutter/material.dart';
import 'package:fyp/components/profile_items.dart';
import 'package:fyp/components/profile_items_title_only.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/services/auth_services.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = 'profile_screen';

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
                    subtitle: 'Muhammad Kamran Amin CH',
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
                  ProfileItemsOnlyTitle(
                    title: 'Change password',
                    icon: Icon(Icons.lock),
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
                  ProfileItemsOnlyTitle(
                    title: 'Create a business profile',
                    icon: Icon(Icons.business_center_outlined),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      color: kProfileScreenDividerColor,
                      thickness: 3.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Earn rewards with partners',
                      style: TextStyle(
                        color: kProfileScreenHeadingColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ProfileItemsOnlyTitle(
                    title: 'Loyality Partners',
                    icon: Icon(Icons.business_center_outlined),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      color: kProfileScreenDividerColor,
                      thickness: 3.0,
                    ),
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
                      AuthService().signOut();
                    },
                    child: ProfileItemsOnlyTitle(
                      title: 'Log Out',
                      icon: Icon(Icons.logout),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      color: kProfileScreenDividerColor,
                      thickness: 3.0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
                    child: ProfileScreenItems(
                      title: 'Terms and conditions',
                      subtitle: 'App Version 0.1 (0.1)',
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
}
