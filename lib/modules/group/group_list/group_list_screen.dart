import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:reminder_app_getx/common/utils/color_utils.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/modules/group/group_list/controller/group_list_controller.dart';
import 'package:reminder_app_getx/modules/home/home_values.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/base_screen/base_screen.dart';
import 'package:reminder_app_getx/widgets/group_item_widget.dart';

class GroupListScreen extends GetView<GroupListController> {
  @override
  Widget build(BuildContext context) {
    return GetX<GroupListController>(
      builder: (state) {
        List<GroupModel> groupList = state.groupListStateRx!.value.groupList;
        return BaseScreen(
            isLoading: state.groupListStateRx!.value.viewState == ViewState.loading,
            child: Scaffold(
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
            ));
      },
    );
  }
}
