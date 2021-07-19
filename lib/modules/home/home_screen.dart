import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/route/routes.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class HomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Text(
          'Home',
          style: ThemeText.body1.copyWith(color: AppColor.hintColor),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            TouchableWidget(
                onPressed: () {},
                padding: EdgeInsets.symmetric(
                  horizontal: Layouts.paddingHorizontalApp,
                  vertical: Layouts.paddingVerticalApp,
                ),
                child: Text(
                  Strings.newReminderTxt,
                  style: ThemeText.button,
                )),
            Spacer(),
            TouchableWidget(
                onPressed: () {
                  Get.toNamed(Routes.addGroup);
                },
                padding: EdgeInsets.symmetric(
                  horizontal: Layouts.paddingHorizontalApp,
                  vertical: Layouts.paddingVerticalApp,
                ),
                child: Text(
                  Strings.addListTxt,
                  style: ThemeText.button,
                ))
          ],
        ),
      ),
    );
  }
}
