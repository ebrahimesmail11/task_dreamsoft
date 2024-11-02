import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class SectionAllCarContainer extends StatelessWidget {
  const SectionAllCarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 16.h),
    //  margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        color: const Color(0xFFEDF1F4),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // منع التمدد الأفقي
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildText(AppStrings.allCars, context),
          const Expanded(child: SizedBox()),
          _buildText(AppStrings.usedCars, context),
          const Expanded(child: SizedBox()),
          _buildImage(),
        ],
      ),
    );
  }

  Widget _buildText(String text, BuildContext context) {
    return Flexible(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyles.styleRobotoMedium12(context).copyWith(
          fontSize: 10.sp,
          color: context.colors.slateBlue,
        ),
        // overflow: TextOverflow.ellipsis,
        //maxLines: 1,
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.r), // لضمان حواف دائرية
      child: Image.asset(
        AppImages.bmw1,
        width: 100.r, // تحديد العرض والارتفاع بدلاً من نصف القطر
        height: 100.r,
        fit: BoxFit.cover,
      ),
    );
  }
}
