import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyle {
  /// .......... common text styles
  static TextStyle appDefaultSTextStyle = GoogleFonts.rubik();

  static TextStyle bottomNavBarTextStyle = appDefaultSTextStyle.copyWith(
      fontSize: 10, fontWeight: FontWeight.w400, color: AppColor.black);
  static TextStyle appTitleTextStyle = AppTextStyle.appDefaultSTextStyle
      .copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColor.appGreyTextColor);
  static TextStyle welcomePageTitle = appDefaultSTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bottomHeading = appDefaultSTextStyle.copyWith(
      fontSize: 7.sp, fontWeight: FontWeight.bold, color: AppColor.whiteColor);
  static TextStyle bottomSubHeading = appDefaultSTextStyle.copyWith(
      fontSize: 6.sp, fontWeight: FontWeight.bold, color: AppColor.whiteColor);
  static TextStyle welcomePageDescription = appDefaultSTextStyle.copyWith(
      color: Colors.grey,
      letterSpacing: 1.2,
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w600);
}
