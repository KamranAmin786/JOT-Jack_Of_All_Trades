import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/AppColors.dart';

class InputFieldApp extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextInputType type;
  final TextEditingController controller;
  final IconData prefixIcon;
  final Function onPressed;
  final Function validator;

  InputFieldApp(
      {this.text = '',
        this.obscureText = false,
        this.type = TextInputType.text,
        this.controller,
        this.onPressed,
        this.validator,
        this.prefixIcon,});

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
                keyboardType: type,
                validator: validator,
                obscureText: obscureText,
                controller: controller,
                style: TextStyle(color: colorPrimary,fontFamily: 'Montserrat',),
                textAlign: TextAlign.center,
                cursorColor: colorPrimary,
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(
                    prefixIcon,
                    color: colorPrimaryLight,
                    size: 20.0,
                  ),
                  focusColor: Colors.white,
                  hintText: text,
                  hintStyle: TextStyle(color: colorGrey, fontSize: 14,fontFamily: 'Montserrat',),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: colorPrimary)),
                  contentPadding: EdgeInsets.only(top: 15.0),
                ),
                onChanged: onPressed,
              ))
        ],
      ),
    );
  }
}
