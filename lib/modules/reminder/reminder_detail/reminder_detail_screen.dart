import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/controller/reminder_detail_controller.dart';
import 'package:reminder_app_getx/modules/reminder/widgets/option_widget.dart';
import 'package:reminder_app_getx/route/routes.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/base_screen/base_screen.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class ReminderDetailScreen extends GetView<ReminderDetailController> {
  @override
  Widget build(BuildContext context) {
    return GetX<ReminderDetailController>(
      builder: (state) {
        return BaseScreen(
            child: Scaffold(
          appBar: AppBar(
            title: Text(
              Strings.detailsTxt,
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
            actions: [
              TouchableWidget(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: Layouts.paddingHorizontalApp),
                child: Center(
                  child: Text(
                    Strings.doneTxt,
                    style: ThemeText.body1.copyWith(
                      color: AppColor.hintColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Layouts.paddingHorizontalApp,
              vertical: Layouts.paddingVertical8,
            ),
            child: OptionWidget(
              onPressed: () {
                Get.toNamed(Routes.priority)!.then((value) {
                  if (value is String) {
                    controller.changePriorityEvent(value);
                  }
                });
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.priorityTxt,
                    style: ThemeText.subtitle2,
                  ),
                  Text(
                    '${state.detailRx!.value.currentPriority}',
                    style: ThemeText.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ));
      }
    );
  }
}
