import 'package:reminder_app_getx/data/models/group_model.dart';
import 'package:reminder_app_getx/data/providers/group_db.dart';

abstract class GroupRepository {
  Future<int> setNewGroup(GroupModel group);
}

class GroupRepositoryImpl implements GroupRepository {
  final GroupDatabase db;

  GroupRepositoryImpl({required this.db});

  @override
  Future<int> setNewGroup(GroupModel group) async {
    return db.setNewGroup(group);
  }

}