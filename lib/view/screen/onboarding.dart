// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/controller/onboarding-controller.dart';
import 'package:technoshopapp/view/widget/onboarding/customslider.dart';


import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomOnBoardingButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
