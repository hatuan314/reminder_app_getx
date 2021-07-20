import 'package:get/get.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/controller/reminder_detail_controller.dart';

class ReminderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReminderDetailController());
  }

}