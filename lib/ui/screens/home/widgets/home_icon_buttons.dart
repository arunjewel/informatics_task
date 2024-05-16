import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIconButton extends StatelessWidget {
  final String iconData;

  const HomeIconButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 14.w),
      child: InkWell(
          onTap: () {},
          child: Image.asset(
            iconData,
            width: 24.w,
            height: 24.h,
            color: Colors.black,
            fit: BoxFit.contain,
          )),
    );
  }
}
