// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aristotel/utils/colors.dart';
import 'package:aristotel/utils/images.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/search_widget.dart';
import '../../../common_widgets/text_widget.dart';
import 'card_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 328.w,
                  height: 182.h,
                  margin: EdgeInsets.only(
                      top: 11.h, right: 16.w, left: 16.w, bottom: 24.h),
                  child: Column(
                    children: [
                      TextWid(
                        text: "Добро пожаловать",
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        bottom: 16.h,
                      ),
                      TextWid(
                        text: "Ищете что-то конкретное?",
                        fontSize: 15.sp,
                        color: Rgb.grey2,
                        bottom: 10.h,
                      ),
                      TextWid(
                        text: "Воспользуйтесь нашим поиском",
                        fontSize: 15.sp,
                        color: Rgb.grey2,
                        bottom: 32.h,
                      ),
                      const SearchWid(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 328.w,
                  height: 150.h,
                  child: ImageSlideshow(
                    indicatorRadius: 3.5.w,
                    indicatorColor: Rgb.White,
                    autoPlayInterval: 7000,
                    isLoop: true,
                    children: [
                      Image.asset(
                        ImagesName.sliderPhoto,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        ImagesName.sliderPhoto,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        ImagesName.sliderPhoto,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                )
              ],
            ),
            height(10.sp),
            Container(
              width: 344.w,
              height: 260.h,
              margin: EdgeInsets.only(top: 24.h, left: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWid(
                    text: "Новые курсы",
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                  height(16.h),
                  SizedBox(
                    height: 220.h,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return const Card_item();
                      },
                    ),
                  ),
                ],
              ),
            ),
            height(10.sp),
            Container(
              width: 344.w,
              height: 260.h,
              margin: EdgeInsets.only(top: 24.h, left: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWid(
                    text: "Сертифицированные курсы",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  height(16.h),
                  SizedBox(
                    height: 220.h,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return const Card_item();
                      },
                    ),
                  ),
                ],
              ),
            ),
            height(10.sp),
            Container(
              width: 344.w,
              height: 260.h,
              margin: EdgeInsets.only(top: 24.h, left: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWid(
                    text: "Новые курсы",
                    fontSize: 12.sp,
                  ),
                  height(16.h),
                  SizedBox(
                    height: 220.h,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return const Card_item();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
