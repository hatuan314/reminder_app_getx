import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:reminder_app_getx/data/models/group_model.dart';

import 'default_env.dart';

class LocalDbSetup {
  Box<GroupModel>? groupBox;

  Future<void> init() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
    Hive.registerAdapter(GroupModelAdapter());
    groupBox = await Hive.openBox(DefaultConfig.groupCollection);
  }

  void dispose() {
    groupBox!.compact();
    Hive.close();
  }
}
