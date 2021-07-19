import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reminder_app_getx/theme/theme_color.dart';

//w100 Thin, the least thick
//w200 Extra-light
//w300 Light
//w400 Normal / regular / plain
//w500 Medium
//w600 Semi-bold
//w700 Bold
//w800 Extra-bold
//w900 Black, the most thick

class ThemeText {
  static TextStyle headline1 = TextStyle(
    fontSize: 98.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.w200,
    letterSpacing: -0.3,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 62.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.w200,
    letterSpacing: -0.3,
  );

  static TextStyle headline3 = TextStyle(
    fontSize: 50.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle headline4 = TextStyle(
    fontSize: 32.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle headline5 = TextStyle(
    fontSize: 26.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle headline6 = TextStyle(
    fontSize: 22.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.3,
  );

  static TextStyle subtitle1 = TextStyle(
    fontSize: 18.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle subtitle2 = TextStyle(
    fontSize: 16.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.3,
  );

  static TextStyle body1 = TextStyle(
    fontSize: 18.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle body2 = TextStyle(
    fontSize: 16.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle button = TextStyle(
    fontSize: 14.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.3,
  );

  static TextStyle caption = TextStyle(
    fontSize: 14.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle overline = TextStyle(
    fontSize: 12.sp,
    color: AppColor.textColor,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.3,
  );

  static TextStyle hintText = caption.copyWith(color: AppColor.hintColor);
  static TextStyle errorText = overline.copyWith(color: AppColor.errorColor);
}
