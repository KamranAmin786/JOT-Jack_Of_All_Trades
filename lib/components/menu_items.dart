import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
      onPressed: onPressed,
    );
  }
}
