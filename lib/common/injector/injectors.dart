import 'package:get_it/get_it.dart';
import 'package:reminder_app_getx/common/configs/local_db_setup.dart';
import 'package:reminder_app_getx/data/providers/group_db.dart';
import 'package:reminder_app_getx/data/repositories/group_repository.dart';

GetIt locator = GetIt.instance;

void setup() {


  /// Repositories
  locator.registerFactory<GroupRepository>(() => GroupRepositoryImpl(db: locator<GroupDatabase>()));

  /// Providers
  locator.registerLazySingleton<GroupDatabase>(() => GroupDatabaseImpl(locator<LocalDbSetup>()));

  /// Utils
  locator.registerLazySingleton<LocalDbSetup>(() => LocalDbSetup());
}
