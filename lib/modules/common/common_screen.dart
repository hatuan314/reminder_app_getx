import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/modules/common/controllers/common_controller.dart';
import 'package:reminder_app_getx/theme/theme_color.dart';
import 'package:reminder_app_getx/widgets/base_screen/loader/loader_widget.dart';

class CommonScreen extends GetView<CommonController> {
  final Widget child;

  CommonScreen({required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Obx(() => LoaderWidget(
        isLoading: controller.isLoadingRx.value,
        child: Material(
            color: AppColor.backgroundColor,
            child: SafeArea(child: child)),
      ),
    );
  }
  
}