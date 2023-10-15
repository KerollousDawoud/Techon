// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/view/widget/Auth/custombuttonauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtextbodyauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtextformauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtexttitleauth.dart';

import '../../../controller/auth/forgetpassword_controller.dart';
import '../../../core/constant/color.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controllerImp =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          centerTitle: true,
          elevation: 0,
          title: Text('Check Email',
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
                SizedBox(height: 20),
                CustomTextTitleAuth(text: 'Check Password'),
                SizedBox(height: 10),
                CustomTextBodyAuth(
                    text:
                        'Please Enter Your Email Address To Receive A Verification Code '),
                SizedBox(height: 20),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Email',
                  labeltext: 'Email',
                  iconData: Icons.email_outlined,
                  mycontroller: controllerImp.email,
                  // mycontroller: mycontroller
                ),
                CustomButtonAuth(
                    text: 'Check',
                    onPressed: () {
                      controllerImp.goToVerifyCode();
                    }),
                SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }
}
