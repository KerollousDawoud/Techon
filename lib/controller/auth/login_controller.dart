
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();

  goToForgetPassword();
}
class LoginControllerImp extends LoginController{

  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {

  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signup);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}


