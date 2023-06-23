// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  const CustomText(
      {super.key,
      required this.text,
      this.size,
      this.color,
      this.fontWeight,
      this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
      ),
      maxLines: 2,
    );
  }
}
