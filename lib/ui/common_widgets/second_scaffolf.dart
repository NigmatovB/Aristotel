// ignore_for_file: unused_local_variable, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';

class SecondScaffold extends StatelessWidget {
  final Widget? body;
  final int? id;
  const SecondScaffold({
    Key? key,
    this.body,
    this.id,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool search = false;
    if (id == 1) search = true;
    return Scaffold(
      backgroundColor: Rgb.bodyColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Rgb.darkBlue),
        title: SvgPicture.asset(NavIcons.logo, width: 126.w, height: 32.h),
        actions: [
          search
              ? Padding(
                  padding: EdgeInsets.only(right: 20.0.w),
                  child: GestureDetector(
                    onTap: () {
                      print("Hello Search");
                    },
                    child: Icon(
                      Icons.search,
                      size: 26.0.sp,
                      color: Rgb.grey1,
                    ),
                  ),
                )
              : Container()
        ],
        leading: GestureDetector(
          child: Icon(
            Icons.menu, 
            color: Rgb.darkBlue,
          ),
          onTap: () {
            print('Hello Drawer');
          },
        ),
      ),
      body: body,
    );
  }
}
