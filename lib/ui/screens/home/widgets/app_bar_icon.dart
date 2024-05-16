import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Image appBarIcon(String imagePath) {
  return Image.asset(
    imagePath,
    width: 120.w,
    height: 35.h,
    fit: BoxFit.contain,
  );
}
