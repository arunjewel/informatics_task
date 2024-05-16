import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_constants.dart';
import '../widgets/custom_bottom_navbar.dart';
import '../widgets/home_icon_buttons.dart';
import 'home_page.dart';

class HomeNavigationPage extends StatelessWidget {
  const HomeNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      Container(),
      Container(),
      Container(),
      Container(),

    ];
    return ValueListenableBuilder<int>(
        valueListenable: homePageIndexNotifier,
        builder: (context, index, child) => Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: EdgeInsets.only(left: 16.w, top: 10.h),
                child: Image.asset(
                  "assets/Logo 2.png",
                  width: 80.w,
                  height: 54.h,
                  fit: BoxFit.contain,
                ),
              ),
              actions: [
                const HomeIconButton(
                  iconData: "assets/icons/Vector.png",
                ),
                const HomeIconButton(
                  iconData: "assets/icons/Vector (1).png",
                ),
                const HomeIconButton(
                  iconData: "assets/icons/Group.png",
                ),
                // Icon(Icons.line_weight_outlined),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            body: pages[index],
            bottomNavigationBar: const CustomBottomNavBar()));
  }
}
