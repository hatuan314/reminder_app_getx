import 'package:get/get.dart';
import 'package:reminder_app_getx/common/injector/injectors.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/modules/reminder/add_reminder/controller/add_reminder_controller.dart';

class AddReminderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddReminderController>(() => AddReminderController(
          groupRepo: locator<GroupRepository>(),
        ));
  }
}
