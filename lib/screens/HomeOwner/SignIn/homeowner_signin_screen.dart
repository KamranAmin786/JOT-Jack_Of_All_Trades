import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/screens/HomeOwner/Registration/HomeownerDataPage.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/screens/HomeOwner/Interactive/bottom_navigator.dart';

class HomeownerSignIn extends StatelessWidget {
  final signIn = GlobalKey();
  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF5145C1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 65.0,
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
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'welcome back !',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'enter your',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'number for login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Form(
                      key: signIn,
                      child: Column(
                        children: <Widget>[
                          InputField(
                            text: 'Enter your number',
                            icon: Icons.phone,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.0),
                            child: SizedBox(
                              height: 55.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, BottomNavigator.id);
                                },
                                child: Center(
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color(0xFF5145C1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 40.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  InkWell(
                                    child: Text(
                                      'create a new account',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeownerDataPage(role: 'Homeowner',)));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
