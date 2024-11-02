import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';
import 'package:task_deamsoft/src/features/data/models/car_image_modle.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/action_section.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/car_detail_data_widget.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/custom_app_bar.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/custom_container_details.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/elvated_button_widget.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/price_rich_text.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/section_all_car_container.dart';
import 'package:task_deamsoft/src/features/presentation/view/car_details/widgets/section_car_list_view_horizontal.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/container_image.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});
  static const routeName = '/carDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final CarImageModel carImageModel = Get.arguments;
    return Scaffold(
      backgroundColor: context.colors.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ContainerImage(
                  image: carImageModel.image,
                ),
                 const Positioned(
                  child:  CustomRowHeader(),
                ),
                Positioned(
                  top: 160.h,
                  left: - MediaQuery.of(context).size.width * .009,
                  child: CustomContainerDetails(
                    child: buildDetailRow(AppImages.frame, AppStrings.walk,
                        AppStrings.price2, context),
                  ),
                ),
                Positioned(
                  top: 160.h,
                  left: MediaQuery.of(context).size.width * 0.35,
                  //right: MediaQuery.of(context).size.width * 0.03,
                  child: CustomContainerDetails(
                    child: buildDetailRow(AppImages.dataRange, AppStrings.date,
                        AppStrings.year1, context),
                  ),
                ),
                Positioned(
                  top: 160.h,
                  right:  MediaQuery.of(context).size.width * 0.009,
                  child: CustomContainerDetails(
                    child: buildDetailRow(AppImages.motor, AppStrings.engine,
                        AppStrings.six, context),
                  ),
                ),
              ],
            ),
            135.verticalSpace,
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
            const ElevatedButtonWidget(),
            24.verticalSpace,
            const CarDetailDataWidget(),
            16.verticalSpace,
            SizedBox(
              width: 346.w,
              child: Text(
                AppStrings.text,
                style: TextStyles.styleRobotoRegular16(context).copyWith(
                  color: context.colors.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            16.verticalSpace,
            const SectionAllCarContainer(),
            16.verticalSpace,
            const SectinCarListViewHorizontal(),
            16.verticalSpace,
            const ActionSection(),
            16.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(
      String image, String title, String value, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(image),
        8.verticalSpace,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: TextStyles.styleRobotoRegular12(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            value,
            style: TextStyles.styleRobotoRegular12(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}


