// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/controller/onboarding-controller.dart';

import '../../../core/constant/color.dart';

class CustomOnBoardingButton extends GetView<OnBoardingControllerImp> {
  const CustomOnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 0,
        ),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: AppColor.buttonColor,
        child: Text(
          'Continue',
        ),
      ),
    );
  }
}
