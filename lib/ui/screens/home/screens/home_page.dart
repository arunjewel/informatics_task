import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:informatics_task/home_controller.dart';
import 'package:provider/provider.dart';

import '../../../../utils/constants/app_text_style.dart';
import '../../../../utils/services/screen_size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Provider.of<HomeController>(context, listen: false)
          .getHomeData(context: context);
    });
    return Consumer<HomeController>(
        builder: (_, mod, __) => Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Image.asset(
                        "assets/banner2.jpg",
                        width: getRelativeWidth(1),
                        height: 140.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const HomePageTitles(
                      label: "Our Brands",
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16.w),
                      height: 150.h,
                      child: ListView.builder(
                        itemCount: mod.banner1.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return CategoryCard(
                              imageUrl:
                                  "https://swan.alisonsnewdemo.online/images/banner/${mod.banner1[index].image}");
                        },
                      ),
                    ),
                    const HomePageTitles(
                      label: "Our Products",
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16.w),
                      height: 150.h,
                      child: ListView.builder(
                        itemCount: mod.banner2.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return CategoryCard(
                              imageUrl:
                              "https://swan.alisonsnewdemo.online/images/banner/${mod.banner1[index].image}");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, right: 10.w),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4.r)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 114.w,
                height: 150.h,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageTitles extends StatelessWidget {
  final String label;

  const HomePageTitles({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppTextStyle.appDefaultSTextStyle
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
          Text(
            "View All",
            style: AppTextStyle.appDefaultSTextStyle
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
