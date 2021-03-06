import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/modules/home/controller/home_controller.dart';
import 'package:reminder_app_getx/modules/home/widgets/group_list_widget.dart';
import 'package:reminder_app_getx/route/routes.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'Re',
            style: ThemeText.body1.copyWith(fontFamily: 'MR', color: AppColor.primaryColor),
            children: [TextSpan(text: 'minders', style: ThemeText.body1.copyWith(fontFamily: 'MR'))],
          ),
        ),
        actions: [
          TouchableWidget(
              onPressed: () {
                Get.toNamed(Routes.dev);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Layouts.paddingHorizontalApp
                  ),
                  alignment: Alignment.center,
                  child: Text('Dev', style: ThemeText.body2,)))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Layouts.paddingHorizontalApp
        ),
        child: GroupListWidget(),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            TouchableWidget(
                onPressed: () {
                  Get.toNamed(Routes.createReminder);
                },
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
                  Get.toNamed(Routes.addGroup)!.then((value) {
                    if (value == true) {
                      controller.getAllGroup();
                    }
                  });
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
