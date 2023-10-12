// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/controller/onboarding-controller.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(

          onBoardingList.length,
              (index) => AnimatedContainer(
                margin: EdgeInsets.only(right: 5),
            duration: Duration(
              milliseconds: 900,
              ),
            width: controller.currentPage == index ? 20 : 7,
            height: 7,
            decoration: BoxDecoration(
                color: AppColor.buttonColor,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    ),);
  }
}
