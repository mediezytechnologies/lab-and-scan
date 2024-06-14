import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class TestCardWidget extends StatelessWidget {
  const TestCardWidget(
      {super.key,
      required this.isCompleted,
      required this.index,
      required this.testName});

  final int isCompleted;
  final int index;
  final String testName;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: size.height * .005),
      decoration: BoxDecoration(
        color: isCompleted == 1 ? Colors.grey[400] : kScaffoldColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${index + 1}. ",
            style: isCompleted == 1 ? white12B500 : grey12B500,
          ),
          SizedBox(
            width: size.width * .75,
            child: Text(
              testName,
              style: isCompleted == 1 ? white12B500 : black12B500,
            ),
          ),
          Icon(
            IconlyLight.tick_square,
            color: isCompleted == 1 ? kCardColor : kMainColor,
            size: 17.sp,
          ),
        ],
      ),
    );
  }
}
