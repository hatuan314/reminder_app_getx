import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_color.dart';

ThemeData appTheme(BuildContext context) {
//  ScreenUtil.init(context, width: 375, height: 812);
  return ThemeData(
      primaryColor: AppColor.primaryColor,
      brightness: Brightness.light,
      buttonTheme: ButtonThemeData(
        //update and enhance in screens where necessary
        buttonColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      fontFamily: 'MR',
      scaffoldBackgroundColor: AppColor.backgroundColor,
      appBarTheme: const AppBarTheme(color: AppColor.backgroundColor, elevation: 0.0),
      // dialogTheme: ThemeDialog.getDefaultDialogTheme(),
      // snackBarTheme: ThemeSnackBar.getDefaultSnackBarTheme(),
      // inputDecorationTheme: ThemeInputDecoration.get(context),
      toggleableActiveColor: AppColor.primaryColor,);
}
