// ignore_for_file: curly_braces_in_flow_control_structures

import '../../../../utils/imports.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWid(
              text: 'Корзина',
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
              top: 11.h,
              bottom: 16.h,
              left: 16..w,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ContainerWidget(
                    topLeft: 15.r,
                    topRight: 15.r,
                    width: 328.w,
                    height: 300,
                    color: Rgb.White,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: ((context, index) => const Card_5()),
                    ),
                  ),
                  ContainerWidget(
                    alignment: Alignment.center,
                    bottomLeft: 15.r,
                    bottomRight: 15.r,
                    width: 328.w,
                    height: 50.h,
                    color: Rgb.grey1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWid(
                          text: 'Общая сумма:',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        width(117.w),
                        TextWid(
                          text: '20 000 UZS',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Rgb.darkBlue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ContainerWidget(
                top: 32.h,
                width: 328.w,
                height: 405.h,
                // color: Rgb.cyan,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWid(
                      text: 'Выберите метод оплаты',
                      fontSize: 14.sp,
                      color: Rgb.grey3,
                      bottom: 16.h,
                    ),
                    ContainerWidget(
                      width: 322.w,
                      height: 75.h,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 12.w),
                            child: InkWell(
                              onTap: () {
                                for (int i = 0; i < cart_item_on.length; i++) {
                                  if (index == i)
                                    cart_item_on[i] = true;
                                  else
                                    cart_item_on[i] = false;
                                }
                                setState(() {});
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 73.sp,
                                    height: 44.sp,
                                    child: SvgPicture.asset(
                                      cart_item_photo[index],
                                      width: 73.w,
                                      height: 44.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height(8.h),
                                  Container(
                                    width: 20.r,
                                    height: 20.r,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                        color: Rgb.grey3,
                                      ),
                                    ),
                                    child: cart_item_on[index] == true
                                        ? ContainerWidget(
                                            radius: 90.r,
                                            color: Rgb.darkBlue,
                                          )
                                        : Container(),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    height(48.h),
                    ElButton(
                      width: 328.w,
                      height: 52.h,
                      backgroundColor: Rgb.darkBlue,
                      textColor: Rgb.White,
                      text: 'Купить курсы',
                      sideColor: Rgb.darkBlue,
                      radius: 15.r,
                      icon: const Icon(Icons.arrow_right_alt_outlined),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
