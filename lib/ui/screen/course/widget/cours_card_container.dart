// ignore_for_file: camel_case_types
import '../../../../utils/imports.dart';

class Cours_count_container extends StatelessWidget {
  final int? count;
  final String? typeCours;
  final bool? divider;
  const Cours_count_container({
    Key? key,
    required this.count,
    required this.typeCours,
    required this.divider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerWidget(
          left: 12.w,
          width: 108.w,
          height: 78.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWid(
                text: count?.toInt().toString(),
                fontSize: 24.sp,
                color: Rgb.darkBlue,
              ),
              height(3.h),
              TextWid(
                text: typeCours,
                fontSize: 16.sp,
                color: Rgb.grey1,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        divider == true ? VerticalDivider(
          color: Rgb.grey1,
          indent: 15.h,
          endIndent: 15.h,
        ) : Container()
      ],
    );
  }
}
