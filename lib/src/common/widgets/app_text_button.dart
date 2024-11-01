import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';



class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 24.0),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? context.colors.slateBlue,
        ),
        padding:WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 16.w,
            vertical: verticalPadding?.h ?? 8.h,
          ),
        ),
        fixedSize:WidgetStatePropertyAll(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 30.h),
        ),
      ),
      onPressed: onPressed,
      child: FittedBox(
        child: Text(
          buttonText,
          style: textStyle,
        ),
      ),
    );
  }
}