// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? onTap;
  const CustomTextSignUpOrSignIn({super.key, required this.textone, required this.texttwo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: TextStyle(
                color: AppColor.buttonColor,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
