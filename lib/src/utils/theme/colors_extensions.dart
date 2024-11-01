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
    required this.mainColor,

  });
  // darkGray  darkOrange darkRed mainColor darkSlateBlue
  final Color? textColor;
  final Color? gray;
  final Color? orange;
  final Color? red;
  final Color? slateBlue;
  final Color? mainColor;
  
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
      slateBlue: slateBlue, mainColor: mainColor,
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
      mainColor:  mainColor,
      gray: gray,
      orange: orange,
      red: red,
      textColor: textColor,
      slateBlue: slateBlue,
    );
  }

  static const MyColors dark = MyColors(
    mainColor: AppColorsDark.mainColor,
   gray: AppColorsDark.darkGray,
    orange: AppColorsDark.darkOrange,
    red: AppColorsDark.darkRed,
    textColor: AppColorsDark.textColor,
    slateBlue: AppColorsDark.darkSlateBlue,
  );

  static const MyColors light = MyColors(
    mainColor: AppColorsLight.mainColor,
    gray: AppColorsLight.lightGray,
    orange: AppColorsLight.orange,
    red: AppColorsLight.red,
    textColor: AppColorsLight.textColor,
    slateBlue: AppColorsLight.lightSlateBlue,
  );
}