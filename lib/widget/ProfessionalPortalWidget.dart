import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';

class ProfessionalPortalWidget extends StatelessWidget {
  final IconData icon;
  final String rating;
  final String field;

  ProfessionalPortalWidget({ this.icon,this.rating,this.field});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 5.0,
      color: colorPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 30.0,color: colorWhite,),
            SizedBox(height: 20.0),
            Text(rating,style: TextStyle(fontSize: 20.0,fontFamily: 'Montserrat',color: colorWhite,fontWeight: FontWeight.w900),),
            SizedBox(height: 20.0),
            Text(field,style: TextStyle(fontSize: 15.0,fontFamily: 'Montserrat',color: colorWhite,fontWeight: FontWeight.w900),),
          ],
        ),
      ),
    );
  }
}