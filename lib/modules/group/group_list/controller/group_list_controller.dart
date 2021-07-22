import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';
import 'package:reminder_app_getx/modules/common/controllers/common_controller.dart';

import 'group_list_state.dart';

class GroupListController extends GetxController {
  final GroupRepository groupRepo;

  CommonController? commonController;
  Rx<GroupListState>? groupListStateRx;

  GroupListController({required this.groupRepo});

  @override
  void onInit() {
    super.onInit();
    commonController = Get.find<CommonController>();
    groupListStateRx = GroupListState(viewState: ViewState.loading, groupList: []).obs;
  }

  @override
  void onReady() {
    super.onReady();
    commonController!.commonThreadList([groupRepo.getGroupList()], onData: (groupList) {
      groupListStateRx!.value = groupListStateRx!.value.copyWith(viewState: ViewState.initial, groupList: groupList);
    });
  }
}
