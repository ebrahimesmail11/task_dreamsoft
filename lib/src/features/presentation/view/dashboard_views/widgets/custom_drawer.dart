import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';
import 'package:task_deamsoft/src/utils/theme/controller.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: context.colors.mainColor,
      child: ListView(
        padding: EdgeInsetsDirectional.only(
          start: 20.w,
          end: 20.w,
          top: 50.h,
          bottom: 20.h,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.themeMode,
                style: TextStyles.styleRobotoSemiBold16(context).copyWith(
                  color: context.colors.textColor,
                ),
              ),
              Switch(
                value: themeController.isDarkMode.value,
                onChanged: (value) {
                  themeController.toggleTheme();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
