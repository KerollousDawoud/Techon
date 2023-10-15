// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/view/widget/Auth/custombuttonauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtextformauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtexttitleauth.dart';

import '../../../controller/auth/verifycode_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/Auth/customtextbodyauth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controllerImp = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          centerTitle: true,
          elevation: 0,
          title: Text('Verify Code',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: ListView(
              children: [
                CustomTextTitleAuth(text: 'Welcome Back'),
                SizedBox(height: 15),
                CustomTextBodyAuth(
                    text:
                        'Sign In With Your Email And Password OR Continue With Social Media'),
                SizedBox(height: 30),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Email',
                  labeltext: 'Email',
                  iconData: Icons.email_outlined,
                  mycontroller: controllerImp.code,
                  // mycontroller: mycontroller
                ),
                CustomButtonAuth(
                    text: 'Continue',
                    onPressed: () {
                      controllerImp.goToResetPassword();
                    }),
                SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }
}
