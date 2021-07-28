import 'package:flutter/material.dart';

class ProfileItemsOnlyTitle extends StatelessWidget {
  ProfileItemsOnlyTitle({this.title, this.icon});
  final String title;
  final Icon icon;

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
      ),
    );
  }
}
