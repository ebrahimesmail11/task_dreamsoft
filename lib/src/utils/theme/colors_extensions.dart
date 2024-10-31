import 'package:flutter/material.dart';
import 'package:task_deamsoft/src/utils/colors/app_colors.light.dart';
import 'package:task_deamsoft/src/utils/colors/app_colors_dark.dart';


class MyColors extends ThemeExtension<MyColors> {
  const MyColors({

    required this.textColor,
    required this.gray,
    required this.orange,
    required this.red,
    required this.slateBlue,

  });
  // darkGray  darkOrange darkRed mainColor darkSlateBlue
  final Color? textColor;
  final Color? gray;
  final Color? orange;
  final Color? red;
  final Color? slateBlue;
  
  @override
  ThemeExtension<MyColors> copyWith({
    Color? gray,
    Color? orange,
    Color? red,
    Color? textColor,
    Color? slateBlue,
  }) {
    return MyColors(
      gray: gray,
      orange: orange,
      red: red,
      textColor: textColor,
      slateBlue: slateBlue,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      gray: gray,
      orange: orange,
      red: red,
      textColor: textColor,
      slateBlue: slateBlue,
    );
  }

  static const MyColors dark = MyColors(
   gray: AppColorsDark.darkGray,
    orange: AppColorsDark.darkOrange,
    red: AppColorsDark.darkRed,
    textColor: AppColorsDark.textColor,
    slateBlue: AppColorsDark.darkSlateBlue,
  );

  static const MyColors light = MyColors(
    gray: AppColorsLight.lightGray,
    orange: AppColorsLight.orange,
    red: AppColorsLight.red,
    textColor: AppColorsLight.textColor,
    slateBlue: AppColorsLight.lightSlateBlue,
  );
}