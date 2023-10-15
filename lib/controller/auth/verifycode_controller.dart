import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkcode();

  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late TextEditingController code;

  @override
  checkcode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    code = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    code.dispose();
    super.dispose();
  }
}
