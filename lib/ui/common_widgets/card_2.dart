import '../../utils/imports.dart';

class Card2 extends StatelessWidget {
  const Card2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      bottom: 8.h,
      width: 328.w,
      height: 113.h,
      radius: 15.r,
      alignment: Alignment.center,
      color: Rgb.White,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContainerWidget(
            width: 107.w,
            height: 89.h,
            left: 15.w,
            radius: 15.r,
            color: Rgb.green,
            alignment: Alignment.center,
            child: Image.asset(
              ImagesName.analytice,
              fit: BoxFit.fitHeight,
            ),
          ),
          ContainerWidget(
            left: 12.w,
            width: 187.w,
            height: 120.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                          color: Rgb.grey3,
                          fontSize: 12.sp,
                          decoration:
                              TextDecoration.lineThrough,
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
  }
}