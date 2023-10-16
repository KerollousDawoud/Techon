import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();

  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToSuccessSignUp() {
    Get.offAndToNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
