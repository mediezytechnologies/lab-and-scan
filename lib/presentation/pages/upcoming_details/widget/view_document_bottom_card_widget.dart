import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mediezy_lab_scan/presentation/pages/upcoming_details/widget/view_document_show_widget.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class ViewDocumentBottomCardWidget extends StatelessWidget {
  const ViewDocumentBottomCardWidget(
      {super.key, required this.uploadedDocument, required this.closeFunction});

  final String uploadedDocument;
  final VoidCallback closeFunction;

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
        children: [
          SizedBox(
            width: size.width * .16,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewDocumentShowWidget(
                    uploadedDocument: uploadedDocument,
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("View uploaded document", style: black14B500),
                SizedBox(
                  width: size.width * .02,
                ),
                const Icon(IconlyLight.show),
              ],
            ),
          ),
          SizedBox(
            width: size.width * .09,
          ),
          GestureDetector(
            onTap: () {
              closeFunction();
            },
            child: const Icon(IconlyLight.close_square),
          ),
        ],
      ),
    );
  }
}
