import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class PriceRichText extends StatelessWidget {
  const PriceRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
    TextSpan(
        children: [
            TextSpan(
                text: AppStrings.price3,
                style: TextStyles.styleRobotoRegular20(context).copyWith(
                  fontSize: 24.sp,
                  color: context.colors.textColor,
                  fontWeight: FontWeight.w700,
                ),
            ),
            TextSpan(
                text: ' ',
                style: TextStyles.styleRobotoRegular20(context).copyWith(
                  color: context.colors.textColor,
                  fontWeight: FontWeight.w600,
                ),
            ),
            TextSpan(
                text: 'د.ك',
                  style: TextStyles.styleRobotoRegular16(context).copyWith(
                  color: context.colors.textColor,
                ),
            ),
        ],
    ),
    textAlign: TextAlign.center,
);
  }
}