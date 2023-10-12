// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:technoshopapp/core/constant/routes.dart';
import 'package:technoshopapp/view/screen/Auth/login.dart';
import 'package:technoshopapp/view/screen/Auth/signup.dart';
import 'package:technoshopapp/view/screen/onboarding.dart';

Map<String,  Widget Function(BuildContext)> routes = {
 AppRoute.login : (Context) => Login(),
 AppRoute.signup : (Context) => SignUp(),
 AppRoute.onBoarding : (Context) => OnBoarding(),
};