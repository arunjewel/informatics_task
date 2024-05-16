import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_constants.dart';
import '../../../../utils/constants/app_text_style.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: homePageIndexNotifier,
        builder: (context, index, child) => BottomNavigationBar(
              currentIndex: index,
              iconSize: 20,
              backgroundColor: AppColor.whiteColor,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColor.appMainColor,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedLabelStyle: AppTextStyle.bottomNavBarTextStyle,
              unselectedLabelStyle: AppTextStyle.bottomNavBarTextStyle
                  .copyWith(color: AppColor.appGreyTextColor),
              onTap: (index) {
                homePageIndexNotifier.value = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: buildAssetImage("1"),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: buildAssetImage("2"),
                  label: 'Brands',
                ),
                BottomNavigationBarItem(
                  icon: buildAssetImage("3"),
                  label: 'Best Items',
                ),
                BottomNavigationBarItem(
                  icon: buildAssetImage("4"),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: buildAssetImage("5"),
                  label: 'Account',
                ),
              ],
            ));
  }

  Widget buildAssetImage(String iconData) {
    return Image.asset(
      "assets/home_icons/${iconData}.png",
      width: 23.w,
      height: 23.h,
      color: Colors.black,
      fit: BoxFit.contain,
    );
  }
}
