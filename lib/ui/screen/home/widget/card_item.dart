// ignore_for_file: camel_case_types

import 'package:aristotel/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../common_widgets/text_widget.dart';

class Card_item extends StatelessWidget {
  final String? title;
  final String? imagePath;
  final Color? demoColor;

  const Card_item({
    Key? key,
    required this.title,
    this.imagePath,
    this.demoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      height: 260.h,
      margin: EdgeInsets.only(top: 24.h, left: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWid(
            text: title,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
          height(16.h),
          SizedBox(
            height: 220.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 16.w),
                  width: 199.w,
                  height: 230.h,
                  decoration: BoxDecoration(
                    // color: Rgb.White,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0.r),
                      topRight: Radius.circular(16.0.r),
                      bottomLeft: Radius.circular(16.0.r),
                      bottomRight: Radius.circular(16.0.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 199.0.w,
                        height: 89.0.h,
                        decoration: BoxDecoration(
                          color: demoColor,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imagePath!),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0.r),
                            topRight: Radius.circular(16.0.r),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.w),
                        width: 187.w,
                        height: 120.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWid(
                              text: 'Бизнес курсы',
                              fontSize: 12.sp,
                              color: Rgb.grey3,
                              bottom: 2.h,
                              top: 12.h,
                            ),
                            TextWid(
                              text: 'Аналитика данных',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              bottom: 2.h,
                            ),
                            TextWid(
                              text: 'Python в бизнесе ',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              bottom: 8.h,
                            ),
                            Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '10 000 UZS',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Rgb.darkBlue,
                                    ),
                                  ),
                                  const TextSpan(text: '  '),
                                  TextSpan(
                                    text: '8 000 UZS',
                                    style: TextStyle(
                                      color: Rgb.grey1,
                                      fontSize: 12.sp,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height(8.h),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      NavIcons.left,
                                      width: 12.w,
                                      height: 12.h,
                                    ),
                                    width(2.w),
                                    TextWid(
                                      text: '32 урока',
                                      fontSize: 12.sp,
                                      color: Rgb.grey1,
                                    )
                                  ],
                                ),
                                width(8.w),
                                Row(
                                  children: [
                                    Image.asset(
                                      NavIcons.right,
                                      width: 12.w,
                                      height: 12.h,
                                    ),
                                    width(2.w),
                                    TextWid(
                                      text: 'Сертификат',
                                      fontSize: 12.sp,
                                      color: Rgb.grey1,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
