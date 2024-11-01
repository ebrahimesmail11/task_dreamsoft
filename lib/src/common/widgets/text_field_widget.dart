import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:  EdgeInsets.symmetric(horizontal: 8.w),
          hintText: AppStrings.searchCar,
          hintStyle: TextStyles.styleRobotoMedium12(context).copyWith(
            fontSize: 14.sp,
            color: context.colors.slateBlue,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.7),
            ),
          ),
          suffixIcon:  SvgPicture.asset(
            AppImages.search, height: 16.h,)
        ),
      ),
    );
  }
}