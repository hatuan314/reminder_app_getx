import 'package:get/get.dart';
import 'package:reminder_app_getx/common/configs/local_db_setup.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocalDbSetup());
  }

}