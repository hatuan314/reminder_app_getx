import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/providers/group_db.dart';

abstract class GroupRepository {
  Future<int> setNewGroup(GroupModel group);
  Future<List<GroupModel>> getGroupList();
  Future<GroupModel> getFirstGroup();
}

class GroupRepositoryImpl implements GroupRepository {
  final GroupDatabase db;

  GroupRepositoryImpl({required this.db});

  @override
  Future<int> setNewGroup(GroupModel group) {
    return db.setNewGroup(group);
  }

  @override
  Future<List<GroupModel>> getGroupList() {
    return db.getGroupList();
  }

  @override
  Future<GroupModel> getFirstGroup() {
    return db.getFirstGroup();
  }

}