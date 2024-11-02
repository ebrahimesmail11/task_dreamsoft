import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWideScreen = MediaQuery.of(context).size.width > 600; // عرض 600 يعتبر كبير للشاشات
    final List<Map<String, dynamic>> actions = [
      {
        'icon': Icons.bookmark_border,
        'text': AppStrings.bookCar,
        'backgroundColor': Colors.white,
        'iconColor': Colors.black,
        'onPressed': () {
          // Handle booking action
        },
      },
      {
        'icon': Icons.location_on,
        'text': AppStrings.carLocation,
        'backgroundColor': Colors.grey.shade800,
        'iconColor': Colors.white,
        'onPressed': () {
          // Handle location action
        },
      },
      {
        'icon': Icons.message_outlined,
        'backgroundColor': Colors.purple.shade100,
        'iconColor': const Color(0xff786DD2),
        'onPressed': () {
          // Handle message action
        },
        'isCircle': true,
      },
      {
        'icon': Icons.call_outlined,
        'backgroundColor': Colors.green.shade100,
        'iconColor': const Color(0xFF49725F),
        'onPressed': () {
          // Handle call action
        },
        'isCircle': true,
      },
    ];

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: isWideScreen ? 8.w : 20.w,
        runSpacing: isWideScreen ? 8.h : 16.h,
        children: actions.map<Widget>((action) {
          if (action['isCircle'] == true) {
            return CircleAvatar(
              radius: isWideScreen ? 30.r : 30.r, // حجم دائري يتغير للشاشات الكبيرة
              backgroundColor: action['backgroundColor'],
              child: IconButton(
                icon: Icon(action['icon'], color: action['iconColor']),
                onPressed: action['onPressed'],
              ),
            );
          }
          return SizedBox(
            width: isWideScreen ? MediaQuery.of(context).size.width * 0.4 : double.infinity,
            child: ActionButton(
              icon: action['icon'],
              text: action['text'],
              backgroundColor: action['backgroundColor'],
              iconColor: action['iconColor'],
              onPressed: action['onPressed'],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: iconColor),
      label: Text(
        text,
        style: TextStyle(color: iconColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        minimumSize: Size(double.infinity, 48.h), // جعل الزر بعرض الشاشة تقريبًا
      ),
      onPressed: onPressed,
    );
  }
}
