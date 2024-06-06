import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class DataCardWidget extends StatelessWidget {
  const DataCardWidget({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title :", style: grey13B500),
          SizedBox(height: size.height * .005),
          SizedBox(
            width: double.infinity,
            child: Text(
              value,
              style: black14B500,
            ),
          ),
        ],
      ),
    );
  }
}
