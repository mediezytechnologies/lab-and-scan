import 'package:flutter/material.dart';
import 'package:mediezy_lab_scan/presentation/core/text_style.dart';

class AuthHeadingText extends StatelessWidget {
  const AuthHeadingText(
      {super.key, required this.text, required this.fontWeight});

  final String text;
  final double fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: main14B500
    );
  }
}
