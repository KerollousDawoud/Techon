// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/constant/routes.dart';
import 'package:technoshopapp/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++ ;
    if(currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
