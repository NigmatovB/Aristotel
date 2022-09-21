import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors.dart';

class SearchWid extends StatelessWidget {
  const SearchWid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328.w,
      height: 52.h,
      child: Material(
        elevation: 2.5,
        shadowColor: Rgb.darkBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0.w),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.sp),
            hintText: 'Поиск',
            hintStyle: TextStyle(
              fontSize: 16.sp,
              color: Rgb.grey2
            ),
            suffixIcon: Container(
                margin: EdgeInsets.all(1.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Rgb.darkBlue,
                    elevation: 3,
                    minimumSize: Size(64.w, 48.h),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15.0.w)),
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    size: 20.sp,
                  ),
                )),
            filled: true,
            fillColor: Rgb.White,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0.w),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}