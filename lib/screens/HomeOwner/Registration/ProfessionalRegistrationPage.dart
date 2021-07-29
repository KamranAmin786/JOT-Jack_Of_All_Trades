import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/Professional/ProfessionalHomeScreen.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/constants.dart';
import 'package:fyp/screens/HomeOwner/Registration/ProfessionalAddCnicPage.dart';
import 'package:fyp/screens/HomeOwner/Registration/ProfesssionalAddFrontCnicPage.dart';
import 'package:fyp/widget/PrimaryButton.dart';
import 'package:intl/intl.dart';

import '../Interactive/bottom_navigator.dart';

class ProfessionalRegistrationPage extends StatefulWidget {
  final String role;
  final String phoneNumber;

  ProfessionalRegistrationPage({this.role, this.phoneNumber});

  @override
  _ProfessionalRegistrationPageState createState() =>
      _ProfessionalRegistrationPageState();
}

class _ProfessionalRegistrationPageState
    extends State<ProfessionalRegistrationPage> {
  TextEditingController dateCtl = TextEditingController();
  TextEditingController phoneNUmber = TextEditingController();
  List<String> selectedSkills = [];
  String skillController;

  String birthDateController;

  File cnicBack;
  File cnicFront;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phoneNUmber.text = widget.phoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5145C1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
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
                      text: 'Enter your number',
                      icon: Icons.phone,
                      controller: phoneNUmber,
                      enabled: false,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
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
                          dateCtl.text = birthDateController;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: InkWell(
                        child: Container(
                          child: ListTile(
                              leading: Icon(
                                FontAwesomeIcons.notesMedical,
                                color: colorWhite,
                              ),
                              title: Text(
                                'CNIC Back Side',
                                style: TextStyle(
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              subtitle: Text(
                                'Ready to begin',
                                style:
                                    TextStyle(color: colorWhite, fontSize: 12.0),
                              ),
                              trailing: cnicBack == null
                                  ? Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15.0,
                                      color: colorWhite,
                                    )
                                  : Icon(
                                      Icons.check,
                                      size: 15.0,
                                      color: Colors.green,
                                    )),
                        ),
                        onTap: () {
                          if (cnicBack == null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProfessionalAddCnicPage())).then((value) {
                              if (value is File) {
                                setState(() {
                                  print('Cnic back is Taken');
                                  cnicBack = value;
                                });
                              }
                            });
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        color: colorBlack,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: InkWell(
                        child: Container(
                          child: ListTile(
                              leading: Icon(
                                FontAwesomeIcons.notesMedical,
                                color: colorWhite,
                              ),
                              title: Text(
                                'CNIC Front Side',
                                style: TextStyle(color: colorWhite),
                              ),
                              subtitle: Text(
                                'Ready to begin',
                                style: TextStyle(color: colorWhite),
                              ),
                              trailing: cnicFront == null
                                  ? Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15.0,
                                      color: colorWhite,
                                    )
                                  : Icon(
                                      Icons.check,
                                      size: 15.0,
                                      color: Colors.green,
                                    )),
                        ),
                        onTap: () {
                          if (cnicFront == null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProfesssionalAddFrontCnicPage())).then((value) {
                              if (value is File) {
                                setState(() {
                                  print('Cnic front is Taken');
                                  cnicFront = value;
                                });
                              }
                            });
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        color: colorBlack,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Skills',
                            style: TextStyle(
                                color: colorWhite, fontWeight: FontWeight.bold),
                          ),
                          DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                iconEnabledColor: Colors.red,
                                isDense: true,
                                hint: new Text(
                                  "Select Skill",
                                  style: TextStyle(color: colorWhite),
                                ),
                                value: skillController,
                                onChanged: (String newValue) {
                                  setState(() {
                                    skillController = newValue;
                                    if (!selectedSkills.contains(newValue)) {
                                      selectedSkills.add(newValue);
                                    }
                                  });
                                },
                                items: kSkills.map(
                                  (String valueItem) {
                                    return new DropdownMenuItem<String>(
                                      value: valueItem,
                                      // value: _mySelection,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          valueItem,
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        selectedSkills.length == 0 || selectedSkills == null
                            ? Container()
                            : Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 50.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.zero,
                                  itemCount: selectedSkills.length,
                                  itemBuilder: (context, index) {
                                    return Stack(
                                      children: <Widget>[
                                        Container(
                                          color: Colors.transparent,
                                          height: 45.0,
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(selectedSkills[index]),
                                                    SizedBox(
                                                      width: 5.0,
                                                    ),
                                                    InkWell(
                                                      child: Icon(
                                                        Icons.close,
                                                        color: Colors.red,
                                                        size: 12,
                                                      ),
                                                      onTap: (){
                                                        setState(() {
                                                          selectedSkills.remove(
                                                              selectedSkills[index]);
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                      ],
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfessionalHomeScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
