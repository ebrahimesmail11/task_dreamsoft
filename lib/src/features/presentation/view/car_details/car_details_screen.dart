import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';
import 'package:task_deamsoft/src/features/data/models/car_image_modle.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/custom_app_bar.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/custom_container_details.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/elvated_button_widget.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/price_rich_text.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/container_image.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});
  static const routeName = '/carDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final CarImageModel carImageModel = Get.arguments;
    return Scaffold(
      backgroundColor: context.colors.mainColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ContainerImage(
                  image: carImageModel.image,
                ),
                Positioned(
                  top: 150.h,
                  left: 20.w,
                  child: CustomContainerDetails(
                    child: buildDetailRow(AppImages.frame, AppStrings.walk,
                        AppStrings.price2, context),
                  ),
                ),
                Positioned(
                  top: 150.h,
                  left: 135.w,
                  child: CustomContainerDetails(
                    child: buildDetailRow(AppImages.dataRange, AppStrings.date,
                        AppStrings.year1, context),
                  ),
                ),
                Positioned(
                  top: 150.h,
                  right: 20.w,
                  child: CustomContainerDetails(
                    child: buildDetailRow(AppImages.motor, AppStrings.engine,
                        AppStrings.six, context),
                  ),
                ),
              ],
            ),
            90.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.good,
                      style: TextStyles.styleRobotoRegular12(context).copyWith(
                        fontSize: 20.sp,
                        color: context.colors.textColor,
                      )),
                  const PriceRichText(),
                ],
              ),
            ),
            36.verticalSpace,
            const  ElvatedButtonWidget(),

           
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(
      String image, String title, String value, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        children: [
          SvgPicture.asset(image),
          8.verticalSpace,
          FittedBox(
            child: Text(
              title,
              style: TextStyles.styleRobotoRegular12(context).copyWith(
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          FittedBox(
            child: Text(
              value,
              style: TextStyles.styleRobotoRegular12(context).copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


