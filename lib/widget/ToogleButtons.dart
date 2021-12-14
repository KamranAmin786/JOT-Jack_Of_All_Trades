
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppAsset/AppColors.dart';

class ToogleButtons extends StatelessWidget{

  final Function onPressed;
  final String text;
  final double minWidth;
  final Color colour;

  ToogleButtons({this.onPressed,this.text ='',this.minWidth = 188.0,this.colour});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: colour,
      height: 50,
      minWidth: minWidth,
      elevation: 5,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: colorWhite,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Montserrat',),
      ),

    );
  }
}