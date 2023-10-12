// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/view/widget/Auth/custombuttonauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtextformauth.dart';
import 'package:technoshopapp/view/widget/Auth/customtexttitleauth.dart';
import 'package:technoshopapp/view/widget/Auth/logoauth.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/Auth/customtextbodyauth.dart';
import '../../widget/Auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          centerTitle: true,
          elevation: 0,
          title: Text('Login',
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
                LogoAuth(),
                CustomTextTitleAuth(text: 'Welcome Back'),
                SizedBox(height: 15),
                CustomTextBodyAuth(
                    text:
                        'Sign In With Your Email And Password OR Continue With Social Media'),
                SizedBox(height: 30),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Email',
                  labeltext: 'email',
                  iconData: Icons.email_outlined, mycontroller: controllerImp.email,
                  // mycontroller: mycontroller
                ),
                CustomTextFormAuth(
                  hinttext: 'Enter Your Password',
                  labeltext: 'Password',
                  iconData: Icons.remove_red_eye, mycontroller: controllerImp.password,
                  // mycontroller: mycontroller
                ),
                Text(
                  'Forget Password',
                  textAlign: TextAlign.end,
                ),
                CustomButtonAuth(text: 'Sign In', onPressed: () {}),
                SizedBox(height: 40),
                CustomTextSignUpOrSignIn(
                  textone: " Don't have an account ? ",
                  texttwo: ' SignUp',
                  onTap: () {
                    controllerImp.goToSignUp();
                  },
                )
              ],
            ),
          ),
        ));
  }
}
