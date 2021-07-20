import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_values.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/base_screen/base_screen.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class PriorityListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseScreen(child: Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.priorityTxt,
          style: ThemeText.body1,
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.black,
            ),
            onPressed: () {
              Get.back();
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Layouts.paddingHorizontalApp,
          vertical: Layouts.paddingVertical8,
        ),
        child: ListView.builder(
            itemCount: ReminderValues.priorityList.length,
            itemBuilder: (context, index) => TouchableWidget(
          onPressed: () {
            Get.back(result: ReminderValues.priorityList[index]);
          },
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Layouts.paddingHorizontalApp,
                vertical: Layouts.paddingVerticalApp,
              ),
              child: Text(ReminderValues.priorityList[index], style: ThemeText.subtitle2,),
            ),
          ),
        )),
      ),
    ));
  }

}