import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/widget/PrimaryButton.dart';
import 'package:fyp/widget/RadioButton.dart';
import 'package:intl/intl.dart';

import 'screens/HomeOwner/Interactive/bottom_navigator.dart';

class HomeownerInformationPage extends StatefulWidget {
  final String role;

  HomeownerInformationPage({this.role});

  @override
  _HomeownerInformationPageState createState() =>
      _HomeownerInformationPageState();
}

class _HomeownerInformationPageState extends State<HomeownerInformationPage> {
  TextEditingController dateCtl = TextEditingController();

  String birthDateController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5145C1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Jack',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Center(
                    child: Text(
                      'of all trades',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Center(
                    child: Text(
                      'Please enter your information',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  InputField(
                    text: 'Enter your name',
                    icon: Icons.person,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InputField(
                    text: 'Enter your email',
                    icon: Icons.email,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InputField(
                    text: 'Enter your number',
                    icon: Icons.phone,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      style: TextStyle(
                        color: colorWhite,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                      cursorColor: colorWhite,
                      controller: dateCtl,
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIcon: Icon(
                          FontAwesomeIcons.calendar,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      focusColor: Colors.white,
                      hintText: 'Enter your date of birth',
                      hintStyle: TextStyle(
                        color: colorGrey,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorWhite)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorGrey)),
                      contentPadding: EdgeInsets.only(top: 15.0),
                    ),
                      onTap: () async {
                        DateTime date = DateTime(1900);
                        FocusScope.of(context).requestFocus(new FocusNode());

                        date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                        String dateFormatter = date.toIso8601String();
                        DateTime dt = DateTime.parse(dateFormatter);
                        var formatter = new DateFormat('dd-MMMM-yyyy');
                        birthDateController = formatter.format(dt);
                        dateCtl.text  =birthDateController;



                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'GENDER',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 14.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Radiobutton(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PrimaryButton(
                    text: 'Sign Up',
                    textColor: colorPrimary,
                    gradient: colorWhite,
                    endGradient: colorWhite,
                    width: 220.0,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigator(
                              )));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
