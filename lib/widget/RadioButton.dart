import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';

class Radiobutton extends StatefulWidget {

  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}

class RadioButtonWidget extends State {

  String radioItem = '';

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            groupValue: radioItem,
            activeColor: colorWhite,
            title: Text('MALE',style: TextStyle(fontSize : 14,color: colorWhite,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
            value: 'male',
            onChanged: (val) {
              setState(() {
                radioItem = val;
              });
            },
          ),
        ),

        Flexible(
          fit: FlexFit.loose,
          child: RadioListTile(
            groupValue: radioItem,
            activeColor: colorWhite,
            title: Text('FEMALE',style: TextStyle(fontSize : 14,color: colorWhite,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
            value: 'female',
            onChanged: (val) {
              setState(() {
                radioItem = val;
              });
            },
          ),
        ),

      ],
    );
  }
}