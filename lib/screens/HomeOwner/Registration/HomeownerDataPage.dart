import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppAsset/AppColors.dart';
import 'package:fyp/components/InputField.dart';
import 'package:fyp/navigator.dart';
import 'package:fyp/screens/HomeOwner/Interactive/bottom_navigator.dart';
import 'package:fyp/services/firebase_services.dart';
import 'package:fyp/widget/PrimaryButton.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeownerDataPage extends StatefulWidget {
  final String role;
  final String phoneNumber;
  final String userUid;
  final String emailUser;
  final String nameUser;

  HomeownerDataPage({ this.role,  this.phoneNumber,  this.userUid, this.emailUser, this.nameUser});

  @override
  _HomeownerDataPageState createState() =>
      _HomeownerDataPageState();
}

class _HomeownerDataPageState extends State<HomeownerDataPage> {
  TextEditingController birthDate = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  FirebaseService firebaseService = FirebaseService();
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

   String birthDateController;
   String genderSelected;
   bool isLoading = false;
   String firebaseMessagingToken;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.emailUser != null && widget.emailUser != null){
      userName.text = widget.nameUser;
      userEmail.text = widget.emailUser;
    }
    phoneNumber.text = widget.phoneNumber;
    firebaseMessaging.getToken().then((value){
      setState(() {
        firebaseMessagingToken = value;
      });
    });
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
                        controller: userEmail,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InputField(
                        text: "text21".tr().toString(), // Enter your number
                        icon: Icons.phone,
                        controller: phoneNumber,
                        enabled: widget.nameUser != null ? true : false,
                        type: TextInputType.phone,
                        validator: validateMobile,
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
                          if(validate()){
                            setState(() {
                              isLoading = true;
                            });
                            await insertHomeownerData(userName: userName.text,userUid: widget.userUid,email: userEmail.text,birthDate: birthDate.text,gender: genderSelected,number: phoneNumber.text,firebaseMessagingToken: firebaseMessagingToken);
                          }
                          setState(() {
                            isLoading = false;
                          });
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
  bool validate (){
    String name = userName.text;
    String email = userEmail.text;
    String dateOfBirth = birthDate.text;
    String genderUser = genderSelected;

    if (name.isEmpty){
      showScaffold(context , 'PLease enter your name');
      return false;
    }
    if (email.isEmpty){
      showScaffold(context , 'PLease enter your email');
      return false;
    }
    if (dateOfBirth.isEmpty){
      showScaffold(context , 'PLease enter your date of birth');
      return false;
    }
    if (genderUser.isEmpty){
      showScaffold(context , 'PLease select your Gender');
      return false;
    }
    return true;
  }
  Future<void> insertHomeownerData(
      {String userUid,
        String userName,
        String birthDate,
        String email,
        String number,
        String gender,String firebaseMessagingToken,bool getData}) async {
    var db = FirebaseFirestore.instance.collection('Homeowner');

    Map<String, dynamic> userData = {
      'userName': userName,
      'birthDate': birthDate,
      'email': email,
      'gender': gender,
      'phoneNumber': number,
      'firebaseMessagingToken':firebaseMessagingToken,
    };
    await db.doc('$userUid').set(userData);

    SharedPreferences preferencesHomeowner =
    await SharedPreferences.getInstance();
    preferencesHomeowner.setString('userName', userName);
    preferencesHomeowner.setString('userUid', userUid);
    preferencesHomeowner.setString('birthDate', birthDate);
    preferencesHomeowner.setString('email', email);
    preferencesHomeowner.setString('gender', gender);
    preferencesHomeowner.setString('phoneNumber', number);

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => BottomNavigator())
    );
  }
}
