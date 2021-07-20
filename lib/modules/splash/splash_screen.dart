import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/route/routes.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.offAllNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.backgroundColor,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Re',
            style: ThemeText.headline4.copyWith(fontFamily: 'MR', color: AppColor.primaryColor),
            children: [TextSpan(text: 'minders', style: ThemeText.headline4.copyWith(fontFamily: 'MR'))],
          ),
        ),
      ),
    );
  }
}
