import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/Professional/EarnMore.dart';
import 'package:fyp/Professional/ProfessionalJobView.dart';
import 'package:fyp/Professional/Rewards.dart';
import 'package:fyp/Professional/Settings.dart';
import 'package:fyp/Professional/TaskPortal.dart';
import 'package:fyp/welcome_screen.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
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
                            width: 15.0,
                          ),
                          Text(
                            'JOT',
                            style: TextStyle(
                                color: Color(0xFF736A8F),
                                fontSize: 25.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
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
                        'High-quality workmanship at great wedges',
                        style: TextStyle(
                          color: Color(0xFF736A8F),
                          fontSize: 12.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              padding: EdgeInsets.zero,
            ),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.tasks),
              title: Text(
                'Jobs Portal',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfessionalJobView(
                        )));
              },
            ),
            Divider(),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
              ),
              title: Text(
                'Professional Portal',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TaskPortal(
                        )));
              },
            ),
            Divider(),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings(
                        )));
              },
            ),
            Divider(),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text(
                'Feedback',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
              ),
              onTap: () {
                //TODO
              },
            ),
            Divider(),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text(
                'Rewards',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfessionalProfileScreen(
                        )));
              },
            ),
            Divider(),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.moneyBill),
              title: Text(
                'Earn More',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EarnMore(
                        )));
              },
            ),
            Divider(),
            SizedBox(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat',),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
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
