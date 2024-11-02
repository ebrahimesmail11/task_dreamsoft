import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_deamsoft/src/features/data/models/car_image_modle.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/car_details_screen.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/custom_container_data_image.dart';

class DataImageGridViewList extends StatelessWidget {
  const DataImageGridViewList({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 400.h,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Get.toNamed(CarDetailsScreen.routeName, arguments: carImage[index]);
          },
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 350.h, maxWidth: 300.w),
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
