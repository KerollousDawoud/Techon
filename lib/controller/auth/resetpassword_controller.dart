import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();

  goToSuccessResetController();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetpassword() {}

  @override
  goToSuccessResetController() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
