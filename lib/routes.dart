// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:technoshopapp/core/constant/routes.dart';
import 'package:technoshopapp/view/screen/Auth/forgetpassword.dart';
import 'package:technoshopapp/view/screen/Auth/login.dart';
import 'package:technoshopapp/view/screen/Auth/resetpassword.dart';
import 'package:technoshopapp/view/screen/Auth/signup.dart';
import 'package:technoshopapp/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => Login(),
  AppRoute.signup: (context) => SignUp(),
  AppRoute.forgetPassword: (context) => ForgetPassword(),
  AppRoute.resetPassword: (context) => ResetPassword(),
  AppRoute.verifyCode: (context) => ResetPassword(),

  //onboarding
  AppRoute.onBoarding: (context) => OnBoarding(),
};
