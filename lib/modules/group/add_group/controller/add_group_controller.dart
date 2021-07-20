import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/utils/color_utils.dart';
import 'package:reminder_app_getx/common/values/enums.dart';

import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';

import 'add_group_state.dart';

class AddGroupController extends GetxController {
  final GroupRepository groupRepo;
  Rx<AddGroupState>? addGroupState;

  AddGroupController({required this.groupRepo});

  @override
  void onInit() {
    super.onInit();
    addGroupState = AddGroupState(
      viewState: ViewState.initial,
      name: '',
      color: AppColor.primaryColor,
      isActiveDoneBtn: false,
    ).obs;
  }

  changeColorEvent(Color color) {
    addGroupState!.value = addGroupState!.value.copyWith(color: color);
  }

  changeTextEvent(String text) {
    _checkActiveDoneBtn(text);
  }

  _checkActiveDoneBtn(String text) {
    if (text.isNotEmpty) {
      addGroupState!.value = addGroupState!.value.copyWith(isActiveDoneBtn: true);
      return;
    }
    addGroupState!.value = addGroupState!.value.copyWith(isActiveDoneBtn: false);
  }

  onPressedAddNewGroup(String name) async {
    addGroupState!.value = addGroupState!.value.copyWith(viewState: ViewState.loading);
    final GroupModel group = GroupModel(
      name: name,
      color: ColorUtils.parseInt(addGroupState!.value.color),
      createAt: DateTime.now(),
      lastTime: DateTime.now(),
    );
    int key = await groupRepo.setNewGroup(group);
    if (key > 0) {
      addGroupState!.value = addGroupState!.value.copyWith(viewState: ViewState.initial);
      Get.back();
    } else {
      addGroupState!.value = addGroupState!.value.copyWith(viewState: ViewState.initial);
    }
  }
}
