import 'package:get/get.dart';
import 'package:reminder_app_getx/common/values/enums.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';

import 'group_list_state.dart';

class GroupListController extends GetxController {
  final GroupRepository groupRepo;

  Rx<GroupListState>? groupListStateRx;

  GroupListController({required this.groupRepo});

  @override
  Future<void> onInit() async {
    super.onInit();
    groupListStateRx = GroupListState(viewState: ViewState.loading, groupList: []).obs;
    final List<GroupModel> groupList = await groupRepo.getGroupList();
    groupListStateRx!.value = groupListStateRx!.value.copyWith(viewState: ViewState.initial, groupList: groupList);
  }
}