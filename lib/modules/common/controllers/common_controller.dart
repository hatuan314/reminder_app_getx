import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/streams.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';

class CommonController extends GetxController {
  Rx<bool> isLoadingRx = false.obs;

  void startLoadingEvent() {
    log('>>>>>> start loading');
    isLoadingRx.value = true;
    Future.delayed(Duration(seconds: 3)).then((value) {
      if (isLoadingRx.value) {
        log('>>>>>>> Timeout');
        finishLoadingEvent();
      }
    });
  }

  void commonThreadList(List<Future<dynamic>> futureList, {Function(dynamic)? onData}) {
    startLoadingEvent();
    List<Stream> streamList = [];
    for (Future future in futureList) {
      final Stream<dynamic> stream = commonStream(future);
      streamList.add(stream);
    }
    MergeStream(streamList).listen(onData, onDone: () {
      finishLoadingEvent();
    });
  }

  Stream<dynamic> commonStream(Future<dynamic> future) async* {
    var result = await future;
    yield result;
  }

  void finishLoadingEvent() {
    log('>>>>>> finish loading');
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