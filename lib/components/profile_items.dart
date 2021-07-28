import 'package:flutter/material.dart';

class ProfileScreenItems extends StatelessWidget {
  ProfileScreenItems({this.suffixIcon, this.title, this.icon, this.subtitle});
  final String title;
  final Icon icon;
  final String subtitle;
  final IconData suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: icon,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Montserrat',
              letterSpacing: 1.25,
            ),
          ),
        ),
        trailing: Icon(
          suffixIcon,
          size: 18.0,
        ),
      ),
    );
  }
}
