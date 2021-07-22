import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/modules/dev_mode/controller/dev_mode_controller.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/base_screen/base_screen.dart';

class DevModeScreen extends GetView<DevModeController> {

  Widget buildButton({Function()? onPressed, String? title}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Layouts.paddingVertical8
      ),
      child: ElevatedButton(onPressed: onPressed, child: Text(title!)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return BaseScreen(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: AppColor.black,), onPressed: () {
          Get.back();
        }),
        title: Text('Dev mode', style: ThemeText.body1,),
      ),
      body: Column(
        children: [
          Obx(() => Text('Duration: ${controller.delay1!.value}')),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: Layouts.paddingHorizontalApp,
                vertical: Layouts.paddingVertical8,
              ),
              children: [
                buildButton(onPressed: () {
                  controller.fakeLoading();
                }, title: 'Common Loader'),
                buildButton(onPressed: () {
                  controller.fakeShowSnackbar();
                }, title: 'Common SnackBar'),
              ],
            ),
          ),
        ],
      ),
    ));
  }

}