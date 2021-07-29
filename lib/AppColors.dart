import 'package:flutter/material.dart';

const Color colorBlack=Color(0xFF000000);
const Color colorWhite=Colors.white;
const Color colorPrimary = Color(0xFF5145C1);
const Color colorGrey = Colors.grey;
const Color colorPrimaryLight = Color(0xFF1974D2);
const Color colorStartGradient = Color (0xFF5145C1);
const Color colorEndGradient = Color(0xFF1974D2);
const Color colorOrange = Colors.deepOrange;
const Color colorRed = Colors.red;
const Color colorMaroon = Color(0xFF640F24);
const Color colorPurple = Color(0xFF846FAA);


Map<int, Color> color =
{
  50:Color.fromRGBO(81, 69, 193, .1),
  100:Color.fromRGBO(81, 69, 193, .2),
  200:Color.fromRGBO(81, 69, 193, .3),
  300:Color.fromRGBO(81, 69, 193, .4),
  400:Color.fromRGBO(81, 69, 193, .5),
  500:Color.fromRGBO(81, 69, 193, .6),
  600:Color.fromRGBO(81, 69, 193, .7),
  700:Color.fromRGBO(81, 69, 193, .8),
  800:Color.fromRGBO(81, 69, 193, .9),
  900:Color.fromRGBO(81, 69, 193, 1),
};
MaterialColor mColorSwatch = MaterialColor(0xFF5145C1, color);