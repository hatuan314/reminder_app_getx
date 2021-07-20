import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/utils/color_utils.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/modules/home/controller/home_controller.dart';
import 'package:reminder_app_getx/modules/home/home_values.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/group_item_widget.dart';

class GroupListWidget extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.groupListTxt, style: ThemeText.subtitle1,),
            SizedBox(height: Layouts.paddingVertical8,),
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: state.homeStateRx!.value.groups.length,
                  itemBuilder: (context, index) {
                    final GroupModel group = state.homeStateRx!.value.groups[index];
                    return GroupItemWidget(
                      onPressed: () {},
                      group: group,
                    );
                  }),
            ),
          ],
        );
      }
    );
  }

}