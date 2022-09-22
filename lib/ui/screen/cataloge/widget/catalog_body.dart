import 'package:aristotel/ui/common_widgets/container_widget.dart';
import 'package:aristotel/ui/screen/cataloge/widget/card_2.dart';
import 'package:aristotel/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/text_widget.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: ContainerWidget(
                width: 338.w,
                height: 115.h,
                left: 5.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return ContainerWidget(
                      width: 113.w,
                      height: 115.h,
                      color: Colors.amber,
                      left: 10.w,
                      radius: 15.r,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ContainerWidget(
                            width: 113.w,
                            height: 55,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0.r),
                              child: Image.asset(
                                ImagesName.analytice,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
            height(24.h),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 328.w,
                height: 530.h,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Card2();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
