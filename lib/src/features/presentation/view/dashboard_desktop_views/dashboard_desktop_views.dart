import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/widgets/text_field_widget.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/container_image.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/custom_container_list_view.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/data_image_grid_view_list.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/widgets/section_button.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_views/widgets/custom_drawer.dart';

class DashboardDesktopViews extends StatelessWidget {
  const DashboardDesktopViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),),
        SizedBox(width: 32.w,),
         Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                20.verticalSpace,
                SizedBox(
                    height: 300.h, child: const CustomContainerListView()),
                const ContainerImage(
                  image: AppImages.carlogo,
                ),
                20.verticalSpace,
                const TextFieldWidget(),
                24.verticalSpace,
                const SectionButton(),
                24.verticalSpace,
                 const DataImageGridViewList(
                  height: 600,
                ),
                90.verticalSpace,
                const ContainerImage(
                  image: AppImages.collectionCar,
                ),
              ],
            ),
          ),),
           SizedBox(width: 32.w,),
      ],
    );
  }
}