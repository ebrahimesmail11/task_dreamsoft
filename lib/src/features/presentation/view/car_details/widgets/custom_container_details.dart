import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerDetails extends StatelessWidget {
  const CustomContainerDetails({super.key, required this.child});
  final Widget child;

  static const double minHeight = 100; // الحد الأدنى للطول
  static const double maxHeight = 340; // الحد الأقصى للطول
  static const double minWidth = 80;   // الحد الأدنى للعرض
  static const double maxWidth = 120;   // الحد الأقصى للعرض

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: minHeight.h,
        maxHeight: maxHeight.h,
        minWidth: minWidth.w,
        maxWidth: maxWidth.w,
      ),
      padding: const EdgeInsets.all(8),
      decoration:  ShapeDecoration(
        color:const Color(0xFFF8F7FD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: child,
    );
  }
}