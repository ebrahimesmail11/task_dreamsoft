import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/widgets/text_field_widget.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/container_image.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/custom_container_list_view.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/data_image_grid_view_list.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/section_button.dart';

class DashboardMobileViews extends StatelessWidget {
  const DashboardMobileViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 300.h, child: const CustomContainerListView()),
          const ContainerImage(image: AppImages.carlogo,),
          20.verticalSpace,
          const TextFieldWidget(),
          24.verticalSpace,
          const SectionButton(),
          24.verticalSpace,
         const DataImageGridViewList(),
          16.verticalSpace, 
           const ContainerImage(image: AppImages.collectionCar,),
        ],
      ),
    );
  }
}
