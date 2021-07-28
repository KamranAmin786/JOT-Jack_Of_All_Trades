import 'package:flutter/material.dart';
import 'package:fyp/Professional/EditProfileViews/ChangeEmailAddressView.dart';
import 'package:fyp/components/profile_items.dart';
import 'package:fyp/components/profile_items_title_only.dart';
import 'package:fyp/constants.dart';

class ProfessionalProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(fontFamily: 'Montserrat',),),
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
                      'Professional Information',
                      style: TextStyle(
                        color: kProfileScreenHeadingColor,
                        fontSize: 18.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ProfileScreenItems(
                    title: 'Name',
                    subtitle: 'Muhammad Awais',
                    icon: Icon(Icons.person),
                  ),
                  ProfileScreenItems(
                    title: 'Mobile number',
                    subtitle: '+923022272789',
                    icon: Icon(Icons.phone_android_outlined),
                  ),
                  InkWell(
                    child: ProfileScreenItems(
                      title: 'Email',
                      suffixIcon: Icons.arrow_forward_ios,
                      subtitle: 'kamranaminch@gmail.com',
                      icon: Icon(Icons.mail_outline),
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangeEmailAddressView(
                              )));
                    },
                  ),
                  ProfileItemsOnlyTitle(
                    title: 'Update skills',
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
                        fontFamily: 'Montserrat',
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
                        fontFamily: 'Montserrat',
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
                    // onTap: () {
                    //   AuthService().signOut();
                    // },
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
                    padding:  EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Text('Terms and conditions',style: TextStyle(fontFamily: 'Montserrat',),),
                        Text('App Version 0.1 (0.1)',style: TextStyle(fontFamily: 'Montserrat',),),
                      ],
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
