import 'package:get/get.dart';
import 'package:reminder_app_getx/common/injector/injectors.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(groupRepo: locator<GroupRepository>()));
  }

}