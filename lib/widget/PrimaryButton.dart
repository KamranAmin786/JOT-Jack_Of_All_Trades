import 'package:flutter/material.dart';
import 'package:fyp/AppAsset/AppColors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double radius;
  final double height;
  final double width;
  final Color gradient;
  final Color endGradient;
  final Color textColor;

  PrimaryButton(
      {this.text,
      this.onPressed,
      this.textColor = colorWhite,
      this.radius = 30,
      this.width = 250,
      this.endGradient = colorEndGradient,
      this.height = 60,
      this.gradient = colorStartGradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: MaterialButton(
        elevation: 5.0,
        onPressed: onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradient, endGradient],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(radius)),
          child: Container(
            constraints: BoxConstraints(maxWidth: width, minHeight: height),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 16.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
