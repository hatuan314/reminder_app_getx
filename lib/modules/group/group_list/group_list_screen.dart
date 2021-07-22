import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/modules/group/group_list/controller/group_list_controller.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/group_item_widget.dart';

class GroupListScreen extends GetView<GroupListController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      List<GroupModel> groupList = controller.groupListStateRx!.value.groupList;
      return Scaffold(
        appBar: AppBar(
          title: Text(
            Strings.groupListTxt,
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
        body: ListView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: Layouts.paddingHorizontalApp,
              vertical: Layouts.paddingVertical8,
            ),
            itemCount: groupList.length,
            itemBuilder: (context, index) => GroupItemWidget(
                onPressed: () {
                  Get.back(result: groupList[index]);
                },
                group: groupList[index])),
      );
    });
  }
}
