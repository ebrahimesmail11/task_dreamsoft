import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/my_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(DevicePreview(
    enabled: false,
    builder: (context) {
      return const MyApp();
    }
  ));
}
