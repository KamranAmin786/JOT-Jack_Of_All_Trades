import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';

class InputField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextInputType type;
  final TextEditingController controller;
  final IconData icon;
  final Function onPressed;
  final Function validator;
  final bool enabled;

  InputField(
      {this.text = '',
      this.obscureText = false,
      this.type = TextInputType.text,
      this.controller,
      this.onPressed,
      this.validator,
        this.enabled = true,
      this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: TextFormField(
                enabled: enabled,
            keyboardType: type,
            validator: validator,
            obscureText: obscureText,
            controller: controller,
            style: TextStyle(
              color: colorWhite,
              fontFamily: 'Montserrat',
            ),
            textAlign: TextAlign.center,
            cursorColor: colorWhite,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: Icon(
                icon,
                color: Colors.white,
                size: 25.0,
              ),
              focusColor: Colors.white,
              hintText: text,
              hintStyle: TextStyle(
                color: colorGrey,
                fontSize: 14,
                fontFamily: 'Montserrat',
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: colorWhite)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: colorGrey)),
              contentPadding: EdgeInsets.only(top: 15.0),
            ),
            onChanged: onPressed,
          ))
        ],
      ),
    );
  }
}
