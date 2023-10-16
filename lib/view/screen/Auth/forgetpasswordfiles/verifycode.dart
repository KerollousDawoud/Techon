// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/view/widget/Auth/customtexttitleauth.dart';

import '../../../../controller/auth/verifycode_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/Auth/customtextbodyauth.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
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
                      'Please Enter The Digit Code Sent To Kerollous@gmail.com'),
              SizedBox(height: 30),
              OtpTextField(
                fieldWidth: 50,
                borderRadius: BorderRadius.circular(15),
                numberOfFields: 5,
                borderColor: AppColor.buttonColor,
                cursorColor: AppColor.buttonColor,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controllerImp.goToResetPassword();
                }, // end onSubmit
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
