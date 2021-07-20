import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/utils/color_utils.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/modules/reminder/add_reminder/controller/add_reminder_controller.dart';
import 'package:reminder_app_getx/modules/reminder/widgets/option_widget.dart';
import 'package:reminder_app_getx/route/routes.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/base_screen/base_screen.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class AddReminderScreen extends GetView<AddReminderController> {
  @override
  Widget build(BuildContext context) {
    return GetX<AddReminderController>(
      builder: (state) => BaseScreen(
          isLoading: state.addReminderRx!.value.viewState == ViewState.loading,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'new_reminder'.tr,
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
            body: state.addReminderRx!.value.viewState == ViewState.loading
                ? SizedBox()
                : Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Layouts.paddingHorizontalApp,
                      vertical: Layouts.paddingVertical8,
                    ),
                    child: Column(
                      children: [
                        OptionWidget(
                            title: Text(
                              Strings.detailsTxt,
                              style: ThemeText.subtitle2,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.reminderDetail);
                            }),
                        SizedBox(
                          height: Layouts.paddingVertical8,
                        ),
                        OptionWidget(
                          onPressed: () {
                            Get.toNamed(Routes.groupList)!.then((value) {
                              if (value is GroupModel) {
                                controller.changeGroupEvent(value);
                              }
                            });
                          },
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                Strings.groupTxt,
                                style: ThemeText.subtitle2,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: ColorUtils.convertColor(state.addReminderRx!.value.currenGroup!.color!),
                                    size: Layouts.paddingHorizontal8,
                                  ),
                                  SizedBox(
                                    width: Layouts.paddingHorizontal5,
                                  ),
                                  Text(state.addReminderRx!.value.currenGroup!.name!),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          )),
    );
  }
}
