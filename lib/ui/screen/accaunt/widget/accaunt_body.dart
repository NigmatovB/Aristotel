import '../../../../utils/imports.dart';

class AccauntBody extends StatelessWidget {
  const AccauntBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ContainerWidget(
            left: 16.w,
            top: 18.h,
            width: double.infinity,
            height: 85.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ContainerWidget(
                  width: 100.h,
                  height: 100.h,
                  child: Image.asset(ImagesName.photo),
                ),
                width(16.w),
                ContainerWidget(
                  width: 160.w,
                  height: 100.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWid(
                        text: 'Руслан',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        bottom: 4.h,
                      ),
                      TextWid(
                        text: '+998 98 123 4567',
                        fontSize: 15.sp,
                        color: Rgb.grey3,
                        fontWeight: FontWeight.w600,
                        bottom: 12.h,
                      ),
                      TextWid(
                        text: 'Редактировать профиль',
                        fontSize: 13.sp,
                        color: Rgb.darkBlue,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ContainerWidget(
            width: 328.w,
            height: 385.h,
            color: Rgb.White,
            radius: 15.r,
            top: 21.h,
            bottom: 21.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Card_6(
                  imgPath: ImagesName.spisok,
                  title: 'Список желаний',
                  subtitle: 'Курсы, которые Вы закрепили в закладки',
                ),
                height(24.sp),
                const Card_6(
                  imgPath: ImagesName.sertifikat,
                  title: 'Мои сертификаты',
                  subtitle: 'Статистика по бонусам, которые начислены Вам',
                ),
                height(24.sp),
                const Card_6(
                  imgPath: ImagesName.bonus2,
                  title: 'Мои бонусы',
                  subtitle: 'Курсы, которые Вы закрепили в закладки',
                ),
                height(24.sp),
                const Card_6(
                  imgPath: ImagesName.vopros,
                  title: 'Вопросы и ответы',
                  subtitle:
                      'Ищите ответы на вопросы, либо задайте их нам и мы ответим',
                ),
                height(24.sp),
                const Card_6(
                  imgPath: ImagesName.uvid,
                  title: 'Уведомления',
                  subtitle:
                      'Все уведомления по важным вопросам, относящимся к сервису',
                ),
              ],
            ),
          ),
          ElButton(
            width: 300.w,
            height: 52.h,
            backgroundColor: Rgb.darkBlue,
            textColor: Rgb.White,
            text: 'Купить курсы',
            sideColor: Rgb.darkBlue,
            radius: 15.r,
            icon: const Icon(Icons.arrow_right_alt_outlined),
          ),
          height(10.h),
          TextWid(
            text: 'Выйти',
            fontSize: 15.sp,
            color: Rgb.orange,
          )
        ],
      ),
    ));
  }
}
