import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/modules/reminder/add_reminder/controller/add_reminder_state.dart';

class AddReminderController extends GetxController {
  final GroupRepository groupRepo;
  Rx<AddReminderState>? addReminderRx;

  AddReminderController({required this.groupRepo});

  @override
  Future<void> onInit() async {
    super.onInit();
    addReminderRx = AddReminderState(viewState: ViewState.loading, currenGroup: GroupModel()).obs;
    final GroupModel group = await groupRepo.getFirstGroup();

    addReminderRx!.value = addReminderRx!.value.copyWith(viewState: ViewState.initial, currenGroup: group);
  }

  changeGroupEvent(GroupModel group) {
    addReminderRx!.value = addReminderRx!.value.copyWith(currenGroup: group);
  }
}