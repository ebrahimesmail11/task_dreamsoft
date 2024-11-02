import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';

class CustomRowHeader extends StatelessWidget {
  const CustomRowHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // زر الرجوع للخلف
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              padding: EdgeInsets.only(bottom: 15.h),
              width: 30.w,
              height: 50.h,
              decoration: const ShapeDecoration(
                color: Color(0xFFE1DDDC),
                shape: OvalBorder(),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon:  const Center(child: Icon(Icons.arrow_back, color: Colors.black, )),
              ),
            ),
          ),

          // الأيقونات الأخرى
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                width: 30.w,
                height: 40.h,
                decoration: const ShapeDecoration(
                  color: Color(0xFFE1DDDC),
                  shape: OvalBorder(),
                ),
                child: SvgPicture.asset(AppImages.heart),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 40.w,
                height: 30.h,
                decoration: const ShapeDecoration(
                  color: Color(0xFFE1DDDC),
                  shape: OvalBorder(),
                ),
                child: SvgPicture.asset(AppImages.share,height: 20.h,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
