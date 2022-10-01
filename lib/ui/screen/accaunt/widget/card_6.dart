// ignore_for_file: camel_case_types
import '../../../../utils/imports.dart';

class Card_6 extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? imgPath;
  const Card_6({
    Key? key,
    this.title,
    this.subtitle,
    this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        imgPath!,
        width: 50.w,
        height: 49.h,
      ),
      title: TextWid(
        text: title,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      subtitle: TextWid(
        text: subtitle,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: Rgb.grey3,
      ),
    );
  }
}
