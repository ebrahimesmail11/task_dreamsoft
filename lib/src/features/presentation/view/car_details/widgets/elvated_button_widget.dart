import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 80.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // جعل العناصر في بداية الصف
          children: [
            SvgPicture.asset(
              AppImages.trueDark,
            ),
            SizedBox(width: 8.w), // مساحة بين الأيقونة والنص
            FittedBox(
              child: Text(
                AppStrings.clockedPrice,
                style: TextStyles.styleRobotoSemiBold16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}