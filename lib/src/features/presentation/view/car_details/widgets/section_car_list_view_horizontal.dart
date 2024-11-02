import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/features/data/models/car_image_modle.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/custom_container_data_image.dart';

class SectinCarListViewHorizontal extends StatelessWidget {
  const SectinCarListViewHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height : MediaQuery.sizeOf(context).height <600 ? 400.h : 500.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
       padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 350.h,
              maxWidth: 300.w,
            ),
            child: CustomContainerDataImage(
              image: carImage[index].image,
            ),
          ),
        ),
        itemCount: carImage.length,
      ),
    );
  }
}