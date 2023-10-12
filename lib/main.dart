// ignore_for_file: prefer_const_constructors, unused_import, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technoshopapp/core/localization/changelocal.dart';
import 'package:technoshopapp/core/localization/translation.dart';
import 'package:technoshopapp/core/services/services.dart';
import 'package:technoshopapp/view/screen/language.dart';
import 'package:technoshopapp/view/screen/onboarding.dart';

import 'core/constant/color.dart';
import 'routes.dart';
import 'view/screen/Auth/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  Get.put(MyServices()..init());
  runApp(const TechnoShop());
}
class TechnoShop extends StatelessWidget {
  const TechnoShop({super.key});

  @override
  Widget build(BuildContext context) {
  LocaleController controller =  Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme:ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: AppColor.black,
          ),
          bodyText1: TextStyle(
            color: AppColor.grey,
            fontSize: 15,
          ),
          bodyText2: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColor.grey,
            fontSize: 15,
          ),
        )
      ),
      home: Language(),
      routes: routes ,
    );
  }
}
