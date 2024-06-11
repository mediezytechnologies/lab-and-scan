import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/text_style.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget(
      {super.key, required this.title, required this.pendingCount});

  final String title;
  final int pendingCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h, right: 12.w),
      child: RichText(
        text: TextSpan(
          text: "$title : ",
          style: grey12B500,
          children: [
            TextSpan(text: pendingCount.toString(), style: black13B500),
          ],
        ),
      ),
    );
  }
}
