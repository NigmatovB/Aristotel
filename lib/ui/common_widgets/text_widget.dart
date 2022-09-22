// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class TextWid extends StatelessWidget {

  double? top;
  double? right;
  double? bottom;
  double? left;
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

   TextWid({
    Key? key,
    this.top,
    this.right,
    this.bottom,
    this.left,
    required this.text,
    this.color,
    required this.fontSize,
    this.fontWeight,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    top = top ?? 0.0;
    right = right ?? 0.0;
    left = left ?? 0.0;
    bottom = bottom ?? 0.0;
    return Container(
      margin: EdgeInsets.only( top: top!, right: right!, left: left!, bottom: bottom! ),
      child: Text(
        text!,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
SizedBox height( h ) => SizedBox( height: h, );
SizedBox width ( w ) => SizedBox( width: w );