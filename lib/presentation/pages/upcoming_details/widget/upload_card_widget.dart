import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class UploadCardWidget extends StatelessWidget {
  const UploadCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.width,
  });

  final String title;
  final Icon icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: black14B500),
          SizedBox(
            width: size.width * .02,
          ),
          icon
        ],
      ),
    );
  }
}
