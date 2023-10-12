// ignore_for_file: must_call_super, annotate_overrides, unused_local_variable, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'dart:ui';

import 'package:get/get.dart';
import 'package:technoshopapp/core/services/services.dart';

class LocaleController extends GetxController {
  Locale? language ;

  MyServices myServices =Get.find();


  changeLang (String langcode){
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);
  }
   void onInit () {
     String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
     if (sharedPrefLang == 'ar') {
       language = Locale('ar');
     } else if (sharedPrefLang == 'en') {
       language = Locale('en');
     } else {
       language = Locale(Get.deviceLocale!.languageCode);
     }
     super.onInit();
   }
}