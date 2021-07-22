import 'package:get/get.dart';
import 'package:reminder_app_getx/modules/common/controllers/common_binding.dart';
import 'package:reminder_app_getx/modules/dev_mode/controller/dev_mode_binding.dart';
import 'package:reminder_app_getx/modules/dev_mode/dev_mode_screen.dart';
import 'package:reminder_app_getx/modules/group/add_group/controller/add_group_binding.dart';
import 'package:reminder_app_getx/modules/group/add_group/add_group_screen.dart';
import 'package:reminder_app_getx/modules/group/group_list/controller/group_list_binding.dart';
import 'package:reminder_app_getx/modules/group/group_list/group_list_screen.dart';
import 'package:reminder_app_getx/modules/home/controller/home_binding.dart';
import 'package:reminder_app_getx/modules/home/home_screen.dart';
import 'package:reminder_app_getx/modules/reminder/add_reminder/add_reminder_screen.dart';
import 'package:reminder_app_getx/modules/reminder/add_reminder/controller/add_reminder_binding.dart';
import 'package:reminder_app_getx/modules/reminder/priority/priority_list_screen.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/controller/reminder_detail_binding.dart';
import 'package:reminder_app_getx/modules/reminder/reminder_detail/reminder_detail_screen.dart';
import 'package:reminder_app_getx/modules/splash/splash_screen.dart';
import 'package:reminder_app_getx/route/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.splash, page: () => SplashScreen()),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
        CommonBinding(),
      ],
    ),
    GetPage(name: Routes.dev, page: () => DevModeScreen(),
        // binding: DevModeBinding(),
        bindings: [
          DevModeBinding(),
          CommonBinding(),
        ]),

    /// Group
    GetPage(name: Routes.addGroup, page: () => AddGroupScreen(), bindings: [
      AddGroupBinding(),
      CommonBinding(),
    ]),
    GetPage(name: Routes.groupList, page: () => GroupListScreen(), bindings: [
      GroupListBinding(),
      CommonBinding(),
    ]),

    /// Reminder
    GetPage(name: Routes.createReminder, page: () => AddReminderScreen(), bindings: [
      AddReminderBinding(),
      CommonBinding(),
    ]),
    GetPage(name: Routes.reminderDetail, page: () => ReminderDetailScreen(), bindings: [
      ReminderDetailBinding(),
      CommonBinding(),
    ]),
    GetPage(name: Routes.priority, page: () => PriorityListScreen(), bindings: [
      GroupListBinding(),
      CommonBinding(),
    ]),
  ];
}
