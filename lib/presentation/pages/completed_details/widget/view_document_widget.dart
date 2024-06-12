import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class ViewDocumentWidget extends StatelessWidget {
  const ViewDocumentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("View uploaded document", style: black14B500),
          SizedBox(
            width: size.width * .02,
          ),
          Icon(IconlyLight.document, color: kMainColor)
        ],
      ),
    );
  }
}
