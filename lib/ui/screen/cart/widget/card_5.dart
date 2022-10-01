// ignore_for_file: camel_case_types
import '../../../../utils/imports.dart';

class Card_5 extends StatelessWidget {
  const Card_5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        ImagesName.img,
        width: 50.w,
        height: 49.h,
      ),
      title: TextWid(
        text: 'Ведение деловых отчетов',
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
      ),
      subtitle: Text.rich(
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
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ),
      trailing: Icon(
        Icons.close,
        color: Rgb.grey1,
      ),
    );
  }
}
