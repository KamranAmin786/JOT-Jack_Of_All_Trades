import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppAsset/AppColors.dart';
import 'package:fyp/Professional/ProfessionalProfileScreen.dart';
import 'package:fyp/welcome_screen.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text('Settings',style: TextStyle(fontFamily: 'Montserrat', ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              child: ListTile(
                title: Text("Profile",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
                leading: Icon(Icons.person,size: 30.0,),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 23.0,
                ),
              ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfessionalProfileScreen(
                        )));
              },
            ),
            Divider(),
            // InkWell(
            //   child: ListTile(
            //     title: Text("Change Password",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
            //     leading: Icon(Icons.password,size: 30.0,),
            //     trailing: Icon(
            //       Icons.arrow_forward_ios_rounded,
            //       size: 23.0,
            //     ),
            //   ),
            //   onTap: (){
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => ChangePasswordView(
            //             )));
            //   },
            // ),
            // Divider(),
            // ListTile(
            //   title: Text("Change Booking Type",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
            //   leading: Icon(Icons.animation,size: 30.0,),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_rounded,
            //     size: 23.0,
            //   ),
            // ),
            // Divider(),
            // ListTile(
            //   title: Text("Maps",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
            //   leading: Icon(Icons.directions,size: 30.0,),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_rounded,
            //     size: 23.0,
            //   ),
            // ),
            // Divider(),
            // ListTile(
            //   title: Text("What's new",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
            //   leading: Icon(Icons.notifications_none,size: 30.0,),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_rounded,
            //     size: 23.0,
            //   ),
            // ),
            // Divider(),
            // ListTile(
            //   title: Text("Referral",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
            //   leading: Icon(Icons.person_add,size: 30.0,),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_rounded,
            //     size: 23.0,
            //   ),
            // ),
            // Divider(),
            InkWell(
              child: ListTile(
                title: Text("Log Out",style: TextStyle(fontSize: 18.0,fontFamily: 'Montserrat',),),
                leading: Icon(Icons.exit_to_app,size: 30.0,),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 23.0,
                ),
              ),
              onTap: () {
                signOut();
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
  signOut() async {
    await _firebaseAuth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
