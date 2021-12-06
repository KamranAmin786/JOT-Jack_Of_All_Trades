import 'package:flutter/material.dart';

const kRatingIcon = Icon(
  Icons.star_rate_rounded,
  size: 12.0,
  color: Colors.white,
);
const kHomeScreenHeadings = TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    letterSpacing: 1.25,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700);

const kHomeContainerStyle = BorderRadius.only(
    bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0));

const kDivider = Divider(
  thickness: 2.0,
  color: Colors.grey,
  height: 2.0,
);

showScaffold (BuildContext context , String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

String validateMobile(String value) {
// pakistan Mobile number are of 10 digit only
  if (value.length != 13)
    return 'khkn jknknkj';
  else
    return null;
}

const kHomeScreenItemBackgroundColor = Color(0xFF5145C1);
const kServiceScreenContainerColor = Colors.white;
const kAppBarColor = Color(0xFF5145C1);
const kAppBackgroundColor = Colors.white;
const kProfileScreenHeadingColor = Color(0xFF5145C1);
const kProfileScreenDividerColor = Colors.grey;
const kAppIconsColor = Color(0xFF5145C1);
const kWalletScreenAppIconBackground = Colors.white38;
const kTaskDetailScreenButtonColor = Color(0xFF5145C1);
const kTaskDetailScreenButtonColorSelected = Colors.white;
const kHomeContainerColor = Color(0xFF5145C1);


final List<String> kSkills = ['Electrition','Plumber','Carpenter','Mover','Cleaner','Aluminium'];
