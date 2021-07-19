import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_controller.dart';
import 'package:reminder_app_getx/modules/group/add_group/add_group_values.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class ColorListWidget extends GetWidget<AddGroupController> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
        ),
        itemCount: AddGroupValues.colorList.length,
        itemBuilder: (context, index) => TouchableWidget(
          onPressed: () {
            controller.changeColorEvent(AddGroupValues.colorList[index]);
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: Layouts.paddingHorizontal8,
              vertical: Layouts.paddingHorizontal8,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AddGroupValues.colorList[index],
              // boxShadow: [
              //   BoxShadow(
              //     color: AddGroupValues.colorList[index].withOpacity(0.5),
              //     spreadRadius: 5,
              //     blurRadius: 7,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
            ),
          ),
        ));
  }
}
