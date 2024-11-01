import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.mainColor,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(8),
        width: 14.w,
        height: 14.h,
        decoration: const ShapeDecoration(
          color: Color(0xFFE1DDDC),
          shape: OvalBorder(),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(8),
          width: 40.w,
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
          height: 40.h,
          decoration: const ShapeDecoration(
            color: Color(0xFFE1DDDC),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(AppImages.share),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
