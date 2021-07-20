import 'package:get/get.dart';
import 'package:reminder_app_getx/common/injector/injectors.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/modules/group/group_list/controller/group_list_controller.dart';

class GroupListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupListController(groupRepo: locator<GroupRepository>()));
  }

}