// ignore_for_file: file_names
import '../../utils/imports.dart';

class ElButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? sideColor;
  final Color? textColor;
  final String? text;
  final Icon? icon;
  final double? radius;
  final Function? func;

  const ElButton({
    Key? key,
    this.width,
    this.height,
    this.backgroundColor,
    this.sideColor,
    this.textColor,
    this.text,
    this.icon,
    this.radius,
    this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    text ?? '';
    width ?? 0.0;
    height ?? 0.0;
    backgroundColor ?? Rgb.transparent;
    textColor ?? Rgb.transparent;
    sideColor ?? Rgb.black;

    return ElevatedButton(
      onPressed: (() => func),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
          side: BorderSide(color: sideColor!),
        ),
      ),
      child: ContainerWidget(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text != null
                ? TextWid(
                    text: text,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  )
                : Container(),
            icon != null
                ? ContainerWidget(
                    left: text != null ? 24.w : 0.0,
                    color: Rgb.blue1,
                    width: 32.w,
                    height: 32.w,
                    radius: 90.r,
                    child: Center(child: icon),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
