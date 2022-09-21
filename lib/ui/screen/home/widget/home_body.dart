import 'package:aristotel/utils/colors.dart';
import 'package:aristotel/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 328.w,
              height: 150.h,
              decoration:  BoxDecoration(
                color: Colors.red,
                  borderRadius:  BorderRadius.all( Radius.circular(40.0.w) ),
                ),
              child: ImageSlideshow(
                indicatorRadius: 3.5.w,
                indicatorColor: Rgb.White,
                autoPlayInterval: 5000,
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
      ),
    );
  }
}
