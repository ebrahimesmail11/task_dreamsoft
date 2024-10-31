import 'package:flutter/material.dart';
import 'package:task_deamsoft/src/utils/theme/colors_extensions.dart';

extension Navigation on BuildContext {

  //Colors
  MyColors get colors => Theme.of(this).extension<MyColors>()!;
}