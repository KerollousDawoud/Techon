// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;

  const CustomTextFormAuth({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: TextFormField(
        cursorColor: AppColor.buttonColor,

        // controller: mycontroller,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: EdgeInsets.symmetric(horizontal: 14),
                child: Text(labeltext)),
            floatingLabelStyle: TextStyle(color: AppColor.buttonColor),
            suffixIcon: Icon(
              iconData,
              color: AppColor.buttonColor,
            ),
            focusColor: AppColor.buttonColor,
            suffixIconColor: AppColor.buttonColor,
            fillColor: AppColor.buttonColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColor.buttonColor),
            )),
      ),
    );
  }
}
