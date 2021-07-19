import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/strings.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_controller.dart';
import 'package:reminder_app_getx/widgets/text_form/text_form_widget.dart';

class AddGroupTextFormWidget extends GetWidget<AddGroupController> {
  final TextEditingController nameController;

  AddGroupTextFormWidget({Key? key,required this.nameController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormWidget(
      controller: nameController,
      hintText: Strings.groupTxt,
      cursorColor: controller.addGroupState!.value.color,
      validator: (value) {},
    );
  }

}