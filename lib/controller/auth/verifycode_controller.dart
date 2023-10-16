// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkcode();

  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  checkcode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
