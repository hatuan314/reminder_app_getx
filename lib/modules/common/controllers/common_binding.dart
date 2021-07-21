import 'package:get/get.dart';

import 'common_controller.dart';

class CommonBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => CommonController());
  }

}