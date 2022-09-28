// ignore_for_file: camel_case_types
import '../../utils/imports.dart';

class Card_4 extends StatelessWidget {
  final String? text;
  const Card_4({
    Key? key,
    required this.text,
    // this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      width: 113.w,
      radius: 15.r,
      right: 10.w,
      child: Column(
        children: [
          ContainerWidget(
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
          ContainerWidget(
            width: double.infinity,
            height: 80.h,
            child: Stack(
              children: [
                Positioned(
                  top: 82.h,
                  left: 60.w,
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
                        text: text,
                        fontSize: 13.sp,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}