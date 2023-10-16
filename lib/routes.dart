// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:technoshopapp/core/constant/routes.dart';
import 'package:technoshopapp/view/screen/Auth/checkemail.dart';
import 'package:technoshopapp/view/screen/Auth/forgetpasswordfiles/forgetpassword.dart';
import 'package:technoshopapp/view/screen/Auth/forgetpasswordfiles/resetpassword.dart';
import 'package:technoshopapp/view/screen/Auth/forgetpasswordfiles/success_resetpassword.dart';
import 'package:technoshopapp/view/screen/Auth/forgetpasswordfiles/verifycode.dart';
import 'package:technoshopapp/view/screen/Auth/login.dart';
import 'package:technoshopapp/view/screen/Auth/signup.dart';
import 'package:technoshopapp/view/screen/Auth/success_signup.dart';
import 'package:technoshopapp/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => Login(),
  AppRoute.signup: (context) => SignUp(),
  AppRoute.forgetPassword: (context) => ForgetPassword(),
  AppRoute.resetPassword: (context) => ResetPassword(),
  AppRoute.checkEmail: (context) => CheckEmail(),
  AppRoute.verifyCode: (context) => VerifyCode(),
  AppRoute.successResetPassword: (context) => SuccessResetPassword(),
  AppRoute.successSignUp: (context) => SuccessSignUp(),

  //onboarding
  AppRoute.onBoarding: (context) => OnBoarding(),
};
