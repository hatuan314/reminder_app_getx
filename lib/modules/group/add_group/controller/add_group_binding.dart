import 'package:get/get.dart';
import 'package:reminder_app_getx/common/injector/injectors.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_controller.dart';

class AddGroupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddGroupController(
      groupRepo: locator<GroupRepository>(),
    ));
  }

}