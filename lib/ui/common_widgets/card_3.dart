// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import 'container_widget.dart';
import 'text_widget.dart';

class Card_3 extends StatelessWidget {
  
  const Card_3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      radius: 15.r,
      child: Column(
        children: [
          Expanded(
            child: ContainerWidget(
              width: double.infinity,
              topRight: 15.0.r,
              topLeft: 15.0.r,
              height: 55.h,
              color: Rgb.cyan,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0.r),
                child: Image.asset(
                  ImagesName.analytice,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: ContainerWidget(
              width: double.infinity,
              height: 55,
              child: Stack(
                children: [
                  Positioned(
                    top: 85.h,
                    left: 80.w,
                    child: ContainerWidget(
                      topLeft: 10.r,
                      width: 32.w,
                      height: 32.w,
                      color: Rgb.White,
                      transform: Matrix4.rotationZ(3.9),
                    ),
                  ),
                  Positioned(
                    child: ContainerWidget(
                      bottomLeft: 15.r,
                      bottomRight: 15.r,
                      width: double.infinity,
                      height: 66.h,
                      color: Rgb.White,
                      child: Center(
                        child: TextWid(
                            text: 'Бизнес и аналитика', fontSize: 14.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
