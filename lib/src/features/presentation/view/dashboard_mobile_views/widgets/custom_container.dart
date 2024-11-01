import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      height: 190.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.r, 
            backgroundImage:   AssetImage(image),
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: const Color(0xFFD89F9F)),
                shape: BoxShape.circle,
              ),
            ),
          ),
          8.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyles.styleRobotoMedium12(context).copyWith(
                color: context.colors.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
