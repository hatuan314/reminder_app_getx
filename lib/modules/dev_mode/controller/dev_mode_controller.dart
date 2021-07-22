import 'dart:developer';

import 'package:get/get.dart';
import 'package:reminder_app_getx/modules/common/controllers/common_controller.dart';

class DevModeController extends GetxController {
  CommonController? commonController;

  @override
  onInit() {
    print('>>>>>>>DevModeController - onInit');
    super.onInit();
    commonController = Get.find<CommonController>();
  }

  Rx<String>? delay1 = 'null'.obs;
  String? delay2;
  int? delay5;

  Future<void> fakeLoading() async {

    commonController!.commonThreadList([delay1s(), delay2s(), delay5s()], onData: (event) {
      if (event is String) {
        delay1!.value = event;
      }
      if (event is bool) {
        delay2 = '2s';
      }
      if (event is int) {
        delay5 = event;
      }
    });
    log('>>>>>>>String: ${delay1!.value}');
    // log('>>>>>>>String: $delay2');
    // log('>>>>>>>int: $delay5 sss');
  }

  Future<String> delay1s() async {
    commonController!.startLoadingEvent();
    await Future.delayed(Duration(seconds: 1));
    // commonController!.finishLoadingEvent();
    return '1s';
  }

  Future<bool> delay2s() async {
    commonController!.startLoadingEvent();
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

  Future<int> delay5s() async {
    commonController!.startLoadingEvent();
    await Future.delayed(Duration(seconds: 5));
    // commonController!.showSnackbar('Test SnackBar');
    return 5;
  }

  void fakeShowSnackbar() {
    commonController!.showSnackbar('Test SnackBar');
  }

  @override
  void onReady() {
    print('>>>>>>>DevModeController - onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>>>>>>DevModeController - onClose');
    super.onClose();
  }
}
