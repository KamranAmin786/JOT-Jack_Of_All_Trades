import 'package:flutter/material.dart';
import 'package:fyp/screens/HomeOwner/Interactive/task_assignment_screen.dart';

class ServicesList extends StatelessWidget {
  ServicesList({this.name, this.icon, this.onPressed});
  final String name;
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: double.infinity,
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(icon),
            Text(
              name,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Opacity(
              opacity: 0.0,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskAssignment(),
            ),
          );
        },
      ),
    );
  }
}
