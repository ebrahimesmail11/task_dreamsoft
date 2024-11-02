import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';
import 'package:task_deamsoft/src/features/data/models/car_detail.dart';

class CarDetailDataWidget extends StatelessWidget {
  const CarDetailDataWidget({super.key});

  @override
   Widget build(BuildContext context) {
    final List<CarDetail> details = [
       CarDetail(
        label: AppStrings.exteriorColor,
        value: AppStrings.white,
        icon: SvgPicture.asset(AppImages.carBlack),
      ),
       CarDetail(
        label:AppStrings.interiorColor,
        value: AppStrings.white,
        icon: SvgPicture.asset(AppImages.carBlack),
      ),
       CarDetail(
        label: AppStrings.carType,
        value: AppStrings.mazda,
        icon: SvgPicture.asset(AppImages.chair), // وضع عنصر بديل للأيقونة إذا لم يكن هناك أيقونة
      ),
       CarDetail(
        label: AppStrings.camera,
        value: AppStrings.mazda,
        icon: SvgPicture.asset(AppImages.camera),
      ),
       CarDetail(
        label: AppStrings.roof,
        value: AppStrings.mazda,
        icon: SvgPicture.asset(AppImages.carBlack),
      ),
       CarDetail(
        label:AppStrings.slider,
        value: AppStrings.front,
        icon: SvgPicture.asset(AppImages.engine),
      ),
       CarDetail(
        label: AppStrings.move,
        value: AppStrings.otm,
        icon:  SvgPicture.asset(AppImages.engine),
      ),
    ];

    return Center(
        child: Container(
          width: 744.w,
         // padding:  EdgeInsets.symmetric(horizontal: 72.w, vertical: 8.h),
          decoration: const BoxDecoration(color: Color(0xFFF8F7FD)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            
            children: details
                .map(
                  (detail) => Padding(
                    padding:  EdgeInsets.only(bottom: 39.h),
                    child: DetailRow(detail: detail),
                  ),
                )
                .toList(),
          ),
        ),
      );
  }
}

class DetailRow extends StatelessWidget {
  final CarDetail detail;

  const DetailRow({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // الأيقونة الأولى
        detail.icon,
        16.horizontalSpace,
        // النص الأول
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              detail.label,
              textAlign: TextAlign.center,
              style: TextStyles.styleRobotoRegular16(context).copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
        16.horizontalSpace,
        // النص الثاني
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              detail.value,
              textAlign: TextAlign.center,
              style: TextStyles.styleRobotoRegular16(context).copyWith(
                color:Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}