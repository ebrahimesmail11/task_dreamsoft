import 'package:flutter/material.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';
import 'package:task_deamsoft/src/utils/colors/app_colors.light.dart';
import 'package:task_deamsoft/src/utils/colors/app_colors_dark.dart';
import 'package:task_deamsoft/src/utils/theme/colors_extensions.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: AppColorsDark.textColor,
    useMaterial3: true,
    textTheme:  TextTheme(
      displaySmall: TextStyles.defaultStyleLDark,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      
    ],
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: AppColorsLight.textColor,
    useMaterial3: true,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
    ],
     textTheme:  TextTheme(
      displaySmall: TextStyles.defaultStyleLight,
    ),
  );
}