// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';
import 'package:technoshopapp/core/localization/changelocal.dart';
import '../widget/language/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              textbutton: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtonLang(
              textbutton: 'En',
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
