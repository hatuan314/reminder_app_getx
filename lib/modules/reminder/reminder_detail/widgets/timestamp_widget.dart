import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/controller/reminder_detail_controller.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/reminder_detail_values.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';

class TimestampWidget extends GetWidget<ReminderDetailController> {
  Widget buildItemWidget({
    String? title,
    String? subTitle,
    IconData? icon,
    bool bottomLine = true,
    Color? backgroundIcon,
    Function(bool)? onChanged,
    bool? value,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Layouts.paddingHorizontalApp,
          ),
          child: Container(
            padding: EdgeInsets.all(Layouts.paddingHorizontal5),
              decoration:
                  BoxDecoration(color: backgroundIcon, borderRadius: BorderRadius.circular(Layouts.roundedRadius)),
              child: Icon(
                icon,
                color: AppColor.white,
              )),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: bottomLine ? BorderSide(width: 1, color: AppColor.paleGrey) : BorderSide.none)),
          padding: EdgeInsets.symmetric(
            vertical: Layouts.paddingVertical12,
          ).copyWith(right: Layouts.paddingHorizontalApp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    title!,
                    style: ThemeText.subtitle2,
                  ),
                  value! ? Text(
                    subTitle!,
                    style: ThemeText.caption.apply(color: AppColor.hintColor),
                  ) : SizedBox.shrink(),
                ],
              ),
              Switch(
                value: value,
                onChanged: onChanged,
                activeColor: AppColor.white,
                activeTrackColor: AppColor.green,
              ),
            ],
          ),
        )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetX<ReminderDetailController>(
      builder: (state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Layouts.roundedRadius),
            color: AppColor.white,
          ),
          child: Column(
            children: [
              buildItemWidget(
                title: ReminderDetailValues.dateTxt,
                icon: Icons.date_range,
                backgroundIcon: AppColor.red,
                value: state.detailRx!.value.switchDate,
                onChanged: (value) {
                  controller.changeSwitchDateEvent(value);
                }
              ),
              buildItemWidget(
                title: ReminderDetailValues.timeTxt,
                icon: Icons.access_time,
                bottomLine: false,
                backgroundIcon: AppColor.blue,
                value: state.detailRx!.value.switchTimer,
                onChanged: (value) {
                  controller.changeSwitchTimerEvent(value);
                }
              ),
            ],
          ),
        );
      }
    );
  }
}
