import 'package:flutter/material.dart';
import 'package:task_deamsoft/src/features/presentation/view/home/home_screen.dart';
import 'package:task_deamsoft/src/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeLight(),
     home: const HomeScreen(),
    );
  }
}