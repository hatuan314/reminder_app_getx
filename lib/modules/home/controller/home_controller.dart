import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/modules/common/controllers/common_controller.dart';
import 'package:reminder_app_getx/modules/home/controller/home_state.dart';

class HomeController extends GetxController {
  final GroupRepository groupRepo;

  CommonController? commonController;
  Rx<HomeState>? homeStateRx;

  HomeController({required this.groupRepo});

  @override
  void onInit() {
    super.onInit();
    homeStateRx = HomeState(viewState: ViewState.initial, groups: []).obs;
    commonController = Get.find<CommonController>();
  }

  @override
  void onReady() {
    super.onReady();
    getAllGroup();
  }

  void getAllGroup() async {
    homeStateRx!.value = homeStateRx!.value.copyWith(viewState: ViewState.loading);
    commonController!.commonThreadList([groupRepo.getGroupList()], onData: (groups) {
      homeStateRx!.value = homeStateRx!.value.copyWith(viewState: ViewState.initial, groups: groups);
    });
    // final List<GroupModel> groups = await groupRepo.getGroupList();
    // homeStateRx!.value = homeStateRx!.value.copyWith(viewState: ViewState.initial, groups: groups);
  }
}
