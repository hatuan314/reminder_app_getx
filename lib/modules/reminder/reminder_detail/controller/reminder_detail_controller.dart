import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/controller/reminder_detail_state.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_values.dart';

class ReminderDetailController extends GetxController {
  Rx<ReminderDetailState>? detailRx;

  @override
  void onInit() {
    super.onInit();
    detailRx = ReminderDetailState(
      viewState: ViewState.initial,
      currentPriority: ReminderValues.priorityList[0],
      switchDate: false,
      switchTimer: false,
      date: DateTime.now(),
      timer: TimeOfDay.now(),
    ).obs;
  }

  changePriorityEvent(String value) {
    detailRx!.value = detailRx!.value.copyWith(currentPriority: value);
  }

  changeSwitchDateEvent(bool value) {
    if(detailRx!.value.switchTimer && !value) {
      detailRx!.value = detailRx!.value.copyWith(switchDate: value, switchTimer: false);
      return;
    }
    detailRx!.value = detailRx!.value.copyWith(switchDate: value);
  }

  changeSwitchTimerEvent(bool value) {
    if (!detailRx!.value.switchDate && value) {
      detailRx!.value = detailRx!.value.copyWith(switchDate: true, switchTimer: value);
      return;
    }
    detailRx!.value = detailRx!.value.copyWith(switchTimer: value);
  }
}
