
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';

abstract class SignUpController extends GetxController{
  signup();
  goToSignIn();

}
class SignUpControllerImp extends SignUpController{

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController confirmpassword;

  @override
  signup() {

  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }


  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }

}


