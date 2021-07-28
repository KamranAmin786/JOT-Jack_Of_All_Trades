import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardWidgets extends StatelessWidget {
  final String tier;
  final Color color;
  final Color colorText;

  RewardWidgets({this.colorText, this.color, this.tier});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.crown,
              color: colorText,
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              tier,
              style: TextStyle(color: colorText),
            ),
          ],
        ));
  }
}