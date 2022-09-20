import 'package:aristotel/utils/colors.dart';
import 'package:aristotel/core/data/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            SizedBox(
              width: 328.w,
              height: 150.h,
              child: ImageSlideshow(
                indicatorColor: Rgb.White,
                // onPageChanged: (value) {
                //   debugPrint('Page changed: $value');
                // },
                autoPlayInterval: 3000,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
