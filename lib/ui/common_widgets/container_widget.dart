// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../utils/colors.dart';

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

    return Container(
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
        borderRadius: BorderRadius.all(
          Radius.circular(radius!),
        ),
      ),
      child: child,
    );
  }
}