import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class TestCardWidget extends StatelessWidget {
  const TestCardWidget(
      {super.key,
      required this.index,
      required this.testName,
      required this.icon});

  final int index;
  final String testName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: size.height * .005),
      decoration: BoxDecoration(
        color: kScaffoldColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${index + 1}. ",
            style: grey12B500,
          ),
          SizedBox(
            width: size.width * .75,
            child: Text(
              testName,
              style: black12B500,
            ),
          ),
          Icon(
            icon,
            color: kMainColor,
            size: 17.sp,
          ),
        ],
      ),
    );
  }
}
