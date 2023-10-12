import 'package:flutter/material.dart';
import 'package:technoshopapp/core/constant/imageassets.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.securelogin , height: 150,);
  }
}
