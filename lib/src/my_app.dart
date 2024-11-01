import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_deamsoft/src/common/routing/route_manger.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_views/dash_board_views.dart';
import 'package:task_deamsoft/src/utils/theme/controller.dart';
import 'package:task_deamsoft/src/utils/theme/theme_service.dart';
import 'package:task_deamsoft/src/utils/theme/themes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeMode themeMode;
  final ThemeController themeController = Get.put(ThemeController());

  @override
  void initState() {
    themeMode = ThemeService().theme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 1222), 
      minTextAdapt: true, 
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light,
          initialRoute: DashBoardViews.routeName,
          getPages: RouteManger.route,
        );
      },
    );
  }
}
