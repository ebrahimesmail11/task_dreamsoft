import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class CustomContainerDataImage extends StatelessWidget {
  const CustomContainerDataImage({
    required this.image,
    super.key,
  });
  
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Center(
              child: Text(
                AppStrings.gmc,
                style: TextStyles.styleRobotoMedium12(context).copyWith(
                  fontSize: 12.sp,
                  color: context.colors.slateBlue,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 230/100,
            // constraints: BoxConstraints(maxWidth: 340.w, maxHeight: 100.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  image: AssetImage(image),
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
              ),
              height: 240.h,
              width: double.infinity,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildColumnItem(
                  context,
                  AppImages.trueLight,
                  AppStrings.blocked,
                  AppStrings.year,
                ),
              ),
              Expanded(
                child: _buildColumnItem(
                  context,
                  AppImages.frame,
                  AppStrings.km,
                  AppStrings.kmData,
                ),
              ),
              Expanded(
                child: _buildColumnItem(
                  context,
                  AppImages.dataRange,
                  AppStrings.date,
                  AppStrings.yearData,
                ),
              ),
              Expanded(
                child: _buildColumnItem(
                  context,
                  AppImages.money,
                  AppStrings.priceData,
                  AppStrings.price,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumnItem(BuildContext context, String icon, String text1, String text2) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text1,
            style: TextStyle(
              fontSize: 8.sp,
              color: context.colors.slateBlue,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text2,
            style: TextStyle(
              fontSize: 7.sp,
              fontWeight: FontWeight.bold,
              color: context.colors.slateBlue,
            ),
          ),
        ),
      ],
    );
  }
}
