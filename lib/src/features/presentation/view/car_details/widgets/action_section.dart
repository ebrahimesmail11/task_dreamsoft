import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_deamsoft/src/common/base/app_strings.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    //final buttonSpacing = SizedBox(width: 8.w);
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
     // padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Wrap(
        spacing: 2.w, // المسافة بين العناصر
        children: actions.map<Widget>((action) {
          if (action['isCircle'] == true) {
            return CircleAvatar(
              backgroundColor: action['backgroundColor'],
              child: IconButton(
                icon: Icon(action['icon'], color: action['iconColor']),
                onPressed: action['onPressed'],
              ),
            );
          }
          return ActionButton(
            icon: action['icon'],
            text: action['text'],
            backgroundColor: action['backgroundColor'],
            iconColor: action['iconColor'],
            onPressed: action['onPressed'],
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
      ),
      onPressed: onPressed,
    );
  }
}
