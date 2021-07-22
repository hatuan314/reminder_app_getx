import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reminder_app_getx/common/translate/translation_service.dart';
import 'package:reminder_app_getx/modules/common/root_screen.dart';
import 'package:reminder_app_getx/modules/common/controllers/common_binding.dart';
import 'package:reminder_app_getx/route/app_pages.dart';
import 'package:reminder_app_getx/route/routes.dart';
import 'package:reminder_app_getx/theme/theme_data.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844), // iPhone 12 Pro
      builder: () => GestureDetector(
        onTap: () {
          // unFocus text field
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: GetMaterialApp(
          title: 'Reminders',
          theme: appTheme(context),
          initialBinding: CommonBinding(),
          initialRoute: Routes.splash,
          getPages: AppPages.pages,
          locale: TranslationService.locale,
          fallbackLocale: TranslationService.fallbackLocale,
          translations: TranslationService(),
          builder: (context, child) {
            return RootScreen(child: child!);
          },
        ),
      ),
    );
  }

}