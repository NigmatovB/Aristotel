// ignore_for_file: must_be_immutable
import '../../utils/imports.dart';

class ContainerWidget extends StatelessWidget {
  late double? width;
  late double? height;
  late Color? color;
  late double? radius;
  late Widget? child;
  late Alignment? alignment;
  late double? top;
  late double? right;
  late double? left;
  late double? bottom;
  late Matrix4? transform;
  late double? padding;
  late double? topLeft;
  late double? topRight;
  late double? bottomRight;
  late double? bottomLeft;

  ContainerWidget({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.radius,
    this.child,
    this.alignment,
    this.top,
    this.right,
    this.left,
    this.bottom,
    this.transform,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = width ?? 0.0;
    height = height ?? 0.0;
    radius = radius ?? 0.0;
    color = color ?? Rgb.transparent;
    child = child ?? Container();
    top = top ?? 0.0;
    right = right ?? 0.0;
    left = left ?? 0.0;
    bottom = bottom ?? 0.0;
    padding = padding ?? 0.0;
    topLeft = topLeft ?? 0.0;
    topRight = topRight ?? 0.0;
    bottomLeft = bottomLeft ?? 0.0;
    bottomRight = bottomRight ?? 0.0;

    return Container(
      padding: EdgeInsets.all(padding!),
      transform: transform,
      margin: EdgeInsets.only(
        top: top!,
        left: left!,
        right: right!,
        bottom: bottom!,
      ),
      alignment: alignment,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular( radius != 0 ? radius! : topLeft! ),
          topRight: Radius.circular(radius != 0 ? radius! : topRight!),
          bottomLeft: Radius.circular(radius != 0 ? radius! : bottomLeft!),
          bottomRight: Radius.circular(radius != 0 ? radius! : bottomRight!),
        ),
      ),
      child: child,
    );
  }
}
