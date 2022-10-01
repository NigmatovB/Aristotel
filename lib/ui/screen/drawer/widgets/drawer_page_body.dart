// ignore_for_file: avoid_print

import '../../../../utils/imports.dart';

class DrawerPageBody extends StatelessWidget {
  const DrawerPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContainerWidget(
        width: double.infinity,
        height: 805.h,
        color: Rgb.White,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesName.bg),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  height: 150.h,
                  child: ContainerWidget(
                    width: 231.w,
                    height: 85.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContainerWidget(
                          width: 95.w,
                          height: 95.h,
                          child: SvgPicture.asset(ImagesName.img),
                        ),
                        width(16.w),
                        ContainerWidget(
                          width: 150.w,
                          height: 78.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWid(
                                text: 'Гость',
                                fontSize: 17.sp,
                                color: Rgb.White,
                                fontWeight: FontWeight.w600,
                              ),
                              ElButton(
                                text: 'Войти',
                                backgroundColor: Rgb.transparent,
                                sideColor: Rgb.White,
                                textColor: Rgb.White,
                                width: 130.w,
                                height: 36.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Rgb.White),
                  onPressed: (() => Navigator.pop(context)),
                )),
              ],
            ),
            ContainerWidget(
              top: 32.h,
              bottom: 130.h,
              width: 177.w,
              left: 23.w,
              height: 248.h,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: 5,
                itemBuilder: ((context, index) => ContainerWidget(
                  width: double.infinity,
                  height: 44.h,
                  bottom: 5.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(driver_item_icon[index]),
                          TextWid(
                            top: 7.h,
                            left: 15.w,
                            text: driver_item_text[index],
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            bottom: 12.h,
                          )
                        ],
                      ),
                    )),
              ),
            ),
            ContainerWidget(
              width: 161.w,
              height: 85.h,
              left: 23.w,
              bottom: 60.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWid(
                    text: 'Язык интерфейса',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    bottom: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            print('rus');
                          },
                          icon: SvgPicture.asset(ImagesName.RU)),
                      IconButton(
                          onPressed: () {
                            print('rus');
                          },
                          icon: SvgPicture.asset(ImagesName.UZ)),
                      IconButton(
                          onPressed: () {
                            print('rus');
                          },
                          icon: SvgPicture.asset(ImagesName.US)),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Rgb.dividerColor,
            ),
            Center(
              child: TextWid(
                text: 'AristotelApp v 1.0',
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                color: Rgb.darkBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
