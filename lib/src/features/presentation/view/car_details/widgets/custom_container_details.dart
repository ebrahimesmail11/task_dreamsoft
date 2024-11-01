import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerDetails extends StatelessWidget {
  const CustomContainerDetails({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 93.h.clamp(120, 220), // للتحكم في الطول بحيث يتكيف مع مختلف الشاشات
      width: 100.w.clamp(100, 120), 
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F7FD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: child,
    );
  }
}
