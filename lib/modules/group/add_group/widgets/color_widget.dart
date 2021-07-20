import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_controller.dart';
import 'package:reminder_app_getx/modules/group/add_group/add_group_values.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';

class ColorWidget extends GetWidget<AddGroupController> {
  @override
  Widget build(BuildContext context) {
    return GetX<AddGroupController>(
      builder: (state) {
        return Container(
          width: AddGroupValues.colorWidgetWidth,
          height: AddGroupValues.colorWidgetWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: state.addGroupState!.value.color,
            boxShadow: [
              BoxShadow(
                color: state.addGroupState!.value.color.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        );
      }
    );
  }

}