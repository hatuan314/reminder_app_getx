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

  Future<void> fakeLoading() async {
    commonController!.startLoadingEvent();
    await Future.delayed(Duration(seconds: 2));
    commonController!.finishLoadingEvent();
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