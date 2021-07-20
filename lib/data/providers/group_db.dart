import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:reminder_app_getx/common/configs/local_db_setup.dart';
import 'package:reminder_app_getx/data/models/group_model.dart';

abstract class GroupDatabase {
  Future<int> setNewGroup(GroupModel group);
  Future<List<GroupModel>> getGroupList();
  Future<GroupModel> getFirstGroup();
}

class GroupDatabaseImpl implements GroupDatabase {
  final LocalDbSetup db;

  GroupDatabaseImpl(this.db);

  Future<int> setNewGroup(GroupModel group) async {
    try {
      int key = await db.groupBox!.add(group);
      return key;
    } on HiveError catch (e) {
      log('>>>>>>>HiveError: ${e.toString()}');
      return -1;
    }
  }

  Future<List<GroupModel>> getGroupList() async {
    List<GroupModel> groups = [];
    try {
      groups.addAll(db.groupBox!.values.toList());
    } on HiveError catch (e) {
      log('>>>>>>>HiveError: ${e.toString()}');
    }
    return groups;
  }

  @override
  Future<GroupModel> getFirstGroup() async {
    return db.groupBox!.values.first;
  }

}