// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/controller/onboarding-controller.dart';

import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (Val) {
        controller.onPageChange(Val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Image.asset(
              onBoardingList[i].image!,
              height: 250,
              width: 350,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
