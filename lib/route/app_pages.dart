import 'package:get/get.dart';
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
    GetPage(name: Routes.home, page: () => HomeScreen(), binding: HomeBinding()),
    /// Group
    GetPage(name: Routes.addGroup, page: () => AddGroupScreen(), binding: AddGroupBinding()),
    GetPage(name: Routes.groupList, page: () => GroupListScreen(), binding: GroupListBinding()),
    /// Reminder
    GetPage(name: Routes.createReminder, page: () => AddReminderScreen(), binding: AddReminderBinding()),
    GetPage(name: Routes.reminderDetail, page: () => ReminderDetailScreen(), binding: ReminderDetailBinding()),
    GetPage(name: Routes.priority, page: () => PriorityListScreen(), binding: GroupListBinding()),
  ];
}
