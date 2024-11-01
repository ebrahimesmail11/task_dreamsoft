import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
static TextStyle defaultStyleLight =  TextStyle(
    fontSize: 14.sp,
    color: Colors.black,
  );
  static TextStyle defaultStyleLDark =  TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
  );
  static TextStyle styleRobotoSemiBold12(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleRobotoRegular10(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
    );
  }
   static TextStyle styleRobotoMedium12(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
    );
  }
   static TextStyle styleRobotoRegular12(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    );
  }
   static TextStyle styleRobotoRegular16(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRobotoRegular20(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRobotoSemiBold16(context) {
    return GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    );
  }
}