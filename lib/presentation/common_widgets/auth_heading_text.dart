import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';

class AuthHeadingText extends StatelessWidget {
  const AuthHeadingText(
      {super.key, required this.text, required this.fontWeight});

  final String text;
  final double fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontWeight.sp,
        color: kMainColor,
      ),
    );
  }
}
