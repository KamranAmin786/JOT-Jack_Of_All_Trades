import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/AppColors.dart';
import 'package:fyp/widget/InputFieldApp.dart';
import 'package:fyp/widget/PrimaryButton.dart';

class ChangeEmailAddressView extends StatefulWidget {
  @override
  _ChangeEmailAddressViewState createState() => _ChangeEmailAddressViewState();
}

class _ChangeEmailAddressViewState extends State<ChangeEmailAddressView> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController newEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: Text('Change your password',style: TextStyle(fontFamily: 'Montserrat', ),),
      ),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height *0.15),
            Text(
              'Want to change Your Password?',
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',),
            ),
            SizedBox(height: 25.0,),
            Text(
              'Enter you current password and the password',
              style: TextStyle(fontWeight: FontWeight.w700,color: colorGrey,fontFamily: 'Montserrat',),
            ),
            Text(
              'you want to set for your profile',
              style: TextStyle(fontWeight: FontWeight.w700,color: colorGrey,fontFamily: 'Montserrat',),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: InputFieldApp(
                obscureText: true,
                text: 'Enter your current email',
                prefixIcon: Icons.email,
                controller: emailController,
              ),
            ),
            SizedBox(height: 15.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: InputFieldApp(
                obscureText: true,
                text: 'Enter your new email',
                prefixIcon: Icons.email,
                controller: newEmailController,
              ),
            ),
            SizedBox(height: 15.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: InputFieldApp(
                obscureText: true,
                text: 'Enter your current password',
                prefixIcon: FontAwesomeIcons.key,
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 55.0,
            ),
            PrimaryButton(
              text: 'CHANGE EMAIL',
              onPressed: () {
                //todo
              },
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
