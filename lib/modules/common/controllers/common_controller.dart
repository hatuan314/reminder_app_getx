import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';

class CommonController extends GetxController {
  Rx<bool> isLoadingRx = false.obs;

  void startLoadingEvent() {
    isLoadingRx.value = true;
  }

  void finishLoadingEvent() {
    isLoadingRx.value = false;
  }

  void showSnackbar(String? msg) {
    Get.snackbar('Test', msg!, icon: Icon(Icons.check_circle, color: AppColor.green,));
  }

  @override
  void onInit() {
    print('>>>>>>>CommonController - onInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>>>>>>CommonController - onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>>>>>>CommonController - onClose');
    super.onClose();
  }
}