import 'package:flutter/material.dart';
import 'package:reminder_app_getx/app.dart';
import 'package:reminder_app_getx/common/configs/local_db_setup.dart';
import 'package:reminder_app_getx/common/injector/injectors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  final localDbSetup = locator<LocalDbSetup>();
  await localDbSetup.init();
  runApp(App());
}
