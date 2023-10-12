// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/controller/auth/signup_controller.dart';
import 'package:technoshopapp/view/widget/Auth/custombuttonauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtextformauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtexttitleauth.dart';

import '../../../core/constant/color.dart';
import '../../widget/Auth/customtextbodyauth.dart';
import '../../widget/Auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controllerImp = Get.put(SignUpControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          centerTitle: true,
          elevation: 0,
          title: Text('Sign Up',
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
                  hinttext: 'Enter Your Username',
                  labeltext: 'User Name',
                  iconData: Icons.person, mycontroller: controllerImp.username,
                  // mycontroller: mycontroller
                ),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Email',
                  labeltext: 'Email',
                  iconData: Icons.email_outlined, mycontroller: controllerImp.email,
                  // mycontroller: mycontroller
                ),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Phone',
                  labeltext: 'Phone',
                  iconData: Icons.phone_android, mycontroller: controllerImp.phone,
                  // mycontroller: mycontroller
                ),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Password',
                  labeltext: 'Password',
                  iconData: Icons.remove_red_eye, mycontroller: controllerImp.password,
                  // mycontroller: mycontroller
                ),
                CustomTextFormAuth(
                  hinttext: 'Confirm Password',
                  labeltext: 'Confirm Password',
                  iconData: Icons.remove_red_eye, mycontroller: controllerImp.confirmpassword,
                  // mycontroller: mycontroller
                ),
                CustomButtonAuth(text: 'Create Account', onPressed: () {}),
                SizedBox(height: 40),
                CustomTextSignUpOrSignIn(
                  textone: " have an account ? ",
                  texttwo: ' Sign In',
                  onTap: () {
                    controllerImp.goToSignIn();
                  },
                )

              ],
            ),
          ),
        ));
  }
}
