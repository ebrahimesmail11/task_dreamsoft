import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/features/presentation/view/dashboard_mobile_views/dashboard_mobile_views.dart';
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
          child: Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: const DashboardMobileViews(),
          ),),
           SizedBox(width: 32.w,),
      ],
    );
  }
}