import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/common/values/layouts.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_controller.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_state.dart';
import 'package:reminder_app_getx/modules/group/add_group/widgets/add_group_text_form_widget.dart';
import 'package:reminder_app_getx/modules/group/add_group/widgets/color_list_widget.dart';
import 'package:reminder_app_getx/modules/group/add_group/widgets/color_widget.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/theme/theme_text.dart';
import 'package:reminder_app_getx/widgets/base_screen/base_screen.dart';
import 'package:reminder_app_getx/widgets/touchable_widget.dart';

class AddGroupScreen extends GetView<AddGroupController> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return GetX<AddGroupController>(
      builder: (state) {
        AddGroupState addGroupState = state.addGroupState!.value;
        _nameController.addListener(() {
          state.changeTextEvent(_nameController.text.trim());
        });
        return BaseScreen(
          isLoading: state.addGroupState!.value.viewState == ViewState.loading,
          child: Scaffold(
            backgroundColor: AppColor.transparent,
            appBar: AppBar(
              title: Text(
                'add_list'.tr,
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
                    onPressed: () {
                      state.onPressedAddNewGroup(_nameController.text.trim());

                    },
                    padding: EdgeInsets.symmetric(horizontal: Layouts.paddingHorizontalApp),
                    child: Center(
                      child: Text(
                        Strings.doneTxt,
                        style: ThemeText.body1.copyWith(
                          color: addGroupState.isActiveDoneBtn ? AppColor.primaryColor : AppColor.hintColor,
                        ),
                      ),
                    ))
              ],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: Layouts.paddingHorizontalApp),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: Layouts.paddingVertical12,
                  ),
                  ColorWidget(),
                  SizedBox(
                    height: Layouts.paddingVertical20,
                  ),
                  AddGroupTextFormWidget(
                    nameController: _nameController,
                  ),
                  SizedBox(
                    height: Layouts.paddingVertical20,
                  ),
                  Expanded(child: ColorListWidget()),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
