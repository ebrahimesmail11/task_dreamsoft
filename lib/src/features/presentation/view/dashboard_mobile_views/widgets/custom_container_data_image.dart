// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:task_deamsoft/src/common/base/app_images.dart';
// import 'package:task_deamsoft/src/common/base/app_strings.dart';
// import 'package:task_deamsoft/src/common/base/extensions.dart';
// import 'package:task_deamsoft/src/common/base/text_styles.dart';

// class CustomContainerDataImage extends StatelessWidget {
//   const CustomContainerDataImage({
//     required this.image,
//     super.key,
//   });
// final String image;
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 340.w / 600.h,
//       child: Container(
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//          // color: Colors.white,
//           borderRadius: BorderRadius.circular(8.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 4,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(bottom: 8.h),
//               child: Center(
//                 child: FittedBox(
//                    fit: BoxFit.scaleDown,
//                   child: Text(
//                     AppStrings.gmc,
//                     style: TextStyles.styleRobotoMedium12(context).copyWith(
//                       fontSize: 14.sp,
//                       color: context.colors.slateBlue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ),
//             // صورة السيارة
//             Container(
//               height: 200.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8.r),
//                 image:  DecorationImage(
//                   image: AssetImage(image), // ضع مسار الصورة هنا
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             8.verticalSpace,
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         SvgPicture.asset(
//                           AppImages.trueLight,
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.blocked,
//                             style: TextStyle(
//                               fontSize: 12.sp,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.year,
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         SvgPicture.asset(
//                           AppImages.frame,
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.km,
//                             style: TextStyle(
//                               fontSize: 12.sp,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.kmData,
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         SvgPicture.asset(
//                           AppImages.dataRange,
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.date,
//                             style: TextStyle(
//                               fontSize: 12.sp,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.yearData,
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         SvgPicture.asset(
//                           AppImages.money,
//                         ),
//                         FittedBox(
//                            fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.priceData,
//                             style: TextStyles.styleRobotoRegular10(context).copyWith(
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                         FittedBox(
//                           fit: BoxFit.scaleDown,
//                           child: Text(
//                             AppStrings.price,
//                             style: TextStyle(
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.bold,
//                               color: context.colors.slateBlue,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_deamsoft/src/common/base/app_images.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';
import 'package:task_deamsoft/src/common/base/extensions.dart';
import 'package:task_deamsoft/src/common/base/text_styles.dart';

class CustomContainerDataImage extends StatelessWidget {
  const CustomContainerDataImage({
    required this.image,
    super.key,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 340.w / 600.h,
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    AppStrings.gmc,
                    style: TextStyles.styleRobotoMedium12(context).copyWith(
                      fontSize: 14.sp,
                      color: context.colors.slateBlue,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            8.verticalSpace,
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildColumnItem(
                    context,
                    AppImages.trueLight,
                    AppStrings.blocked,
                    AppStrings.year,
                  ),
                  _buildColumnItem(
                    context,
                    AppImages.frame,
                    AppStrings.km,
                    AppStrings.kmData,
                  ),
                  _buildColumnItem(
                    context,
                    AppImages.dataRange,
                    AppStrings.date,
                    AppStrings.yearData,
                  ),
                  _buildColumnItem(
                    context,
                    AppImages.money,
                    AppStrings.priceData,
                    AppStrings.price,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnItem(BuildContext context, String icon, String text1, String text2) {
    return Expanded(
      child: Column(
        children: [
          SvgPicture.asset(icon,),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text1,
              style: TextStyle(
                fontSize: 8.sp,
                color: context.colors.slateBlue,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text2,
              style: TextStyle(
                fontSize: 7.sp,
                fontWeight: FontWeight.bold,
                color: context.colors.slateBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
