import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';

import 'add_group_state.dart';

class AddGroupController extends GetxController {
  Rx<AddGroupState>? addGroupState;

  @override
  void onInit() {
    super.onInit();
    addGroupState = AddGroupState(name: '', color: AppColor.primaryColor, isActiveDoneBtn: false).obs;

  }

  changeColorEvent(Color color) {
    log('>>>>>Color: ${color.toString()}');
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
}