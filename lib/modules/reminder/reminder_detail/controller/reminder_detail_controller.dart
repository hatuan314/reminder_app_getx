import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/controller/reminder_detail_state.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_values.dart';

class ReminderDetailController extends GetxController {
  Rx<ReminderDetailState>? detailRx;

  @override
  void onInit() {
    super.onInit();
    detailRx = ReminderDetailState(viewState: ViewState.initial, currentPriority: ReminderValues.priorityList[0]).obs;
  }

  changePriorityEvent(String value) {
    detailRx!.value = detailRx!.value.copyWith(currentPriority: value);
  }
}