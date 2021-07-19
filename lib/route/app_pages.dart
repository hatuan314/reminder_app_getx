import 'package:get/get.dart';
import 'package:reminder_app_getx/common/bindings/add_group_binding.dart';
import 'package:reminder_app_getx/modules/group/add_group/add_group_screen.dart';
import 'package:reminder_app_getx/modules/home/home_screen.dart';
import 'package:reminder_app_getx/modules/splash/splash_screen.dart';
import 'package:reminder_app_getx/route/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.splash, page: () => SplashScreen()),
    GetPage(name: Routes.home, page: () => HomeScreen()),
    GetPage(name: Routes.addGroup, page: () => AddGroupScreen(), binding: AddGroupBinding()),
  ];
}
