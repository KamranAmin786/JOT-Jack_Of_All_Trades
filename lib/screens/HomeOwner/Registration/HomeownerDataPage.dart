import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/screens/HomeOwner/Interactive/bottom_navigator.dart';
import 'package:fyp/services/firebase_services.dart';
import 'package:fyp/widget/PrimaryButton.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeownerDataPage extends StatefulWidget {
  final String role;
  final String phoneNumber;
  final String userUid;

  HomeownerDataPage({ this.role,  this.phoneNumber,  this.userUid});

  @override
  _HomeownerDataPageState createState() =>
      _HomeownerDataPageState();
}

class _HomeownerDataPageState extends State<HomeownerDataPage> {
  TextEditingController birthDate = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  FirebaseService firebaseService = FirebaseService();

   String birthDateController;
   String genderSelected;
   bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phoneNumber.text = widget.phoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5145C1),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.06,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "hello".tr().toString(), // JACK
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
                          "text1".tr().toString(), // of all trades
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.03,
                      ),
                      Center(
                        child: Text(
                          "text18".tr().toString(), // Please enter your information
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
                        text: "text19".tr().toString(), // Enter your name
                        icon: Icons.person,
                        controller: userName,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InputField(
                        text: "text20".tr().toString(), // Enter your email
                        icon: Icons.email,
                        controller: email,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InputField(
                        text: "text21".tr().toString(), // Enter your number
                        icon: Icons.phone,
                        controller: phoneNumber,
                        enabled: false,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          style: TextStyle(
                            color: colorWhite,
                            fontFamily: 'Montserrat',
                          ),
                          textAlign: TextAlign.center,
                          cursorColor: colorWhite,
                          controller: birthDate,
                          decoration: InputDecoration(
                            isDense: true,
                            prefixIcon: Icon(
                              FontAwesomeIcons.calendar,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            focusColor: Colors.white,
                            hintText: "text22".tr().toString(),
                            // Enter your date of birth
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
                            String dateFormatter = date?.toIso8601String();
                            DateTime dt = DateTime.parse(dateFormatter);
                            var formatter = new DateFormat('dd-MMMM-yyyy');
                            birthDateController = formatter.format(dt);
                            birthDate.text = birthDateController;
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
                                "text23".tr().toString(), // GENDER
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
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: RadioListTile(
                                      contentPadding: EdgeInsets.zero,
                                      groupValue: genderSelected,
                                      activeColor: colorWhite,
                                      title: Text('MALE', style: TextStyle(
                                          fontSize: 14,
                                          color: colorWhite,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),),
                                      value: 'male',
                                      onChanged: (val) {
                                        setState(() {
                                          genderSelected = val.toString();
                                        });
                                        print(genderSelected);
                                      },
                                    ),
                                  ),

                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: RadioListTile(
                                      groupValue: genderSelected,
                                      activeColor: colorWhite,
                                      title: Text('FEMALE', style: TextStyle(
                                          fontSize: 14,
                                          color: colorWhite,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),),
                                      value: 'female',
                                      onChanged: (val) {
                                        setState(() {
                                          genderSelected = val.toString();
                                        });
                                        print(genderSelected);
                                      },
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      PrimaryButton(
                        text: "text24".tr().toString(),
                        // Sign In
                        textColor: colorPrimary,
                        gradient: colorWhite,
                        endGradient: colorWhite,
                        width: 220.0,
                        onPressed: () async {
                          setState(() {
                            isLoading = true;

                          });
                         await firebaseService.insertHomeownerData(userName: userName.text,userUid: widget.userUid,email: email.text,birthDate: birthDate.text,gender: genderSelected,number: phoneNumber.text);
                          setState(() {
                            isLoading = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigator()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isLoading
                ? Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: Colors.black38,
              child: Center(
                  child: CircularProgressIndicator(
                    valueColor:
                    new AlwaysStoppedAnimation<Color>(Colors.white),
                  )),
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}
