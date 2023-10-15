import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  goToLogin();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    super.dispose();
  }
}
