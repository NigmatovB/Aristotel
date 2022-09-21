// ignore_for_file: camel_case_types

import 'package:aristotel/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/images.dart';
import '../../../common_widgets/text_widget.dart';

class Card_item extends StatelessWidget {
  const Card_item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(ImagesName.sliderPhoto)),
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
                        text:'8 000 UZS',
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
                        SvgPicture.asset( NavIcons.left ),
                        width(8.w),
                        TextWid(text: '32 урока', fontSize: 12.sp, color: Rgb.grey1,)
                      ],
                    ),
                    width(2.w),
                    Row(
                      children: [
                        SvgPicture.asset( NavIcons.right, height: 12.0, width: 12.0 ,color: Colors.black, ),
                        width(8.w),
                        TextWid(text:'Сертификат', fontSize: 12.sp, color: Rgb.grey1,)
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
  }
}
