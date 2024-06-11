import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class CompletedCardWidget extends StatelessWidget {
  const CompletedCardWidget(
      {super.key,
      required this.patientImage,
      required this.patientName,
      required this.testName,
      required this.mobileNumber,
      required this.patientAge,
      required this.doctorName,
      required this.note});

  final String patientImage;
  final String patientName;
  final String testName;
  final String mobileNumber;
  final String patientAge;
  final String doctorName;
  final String note;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              FadedScaleAnimation(
                scaleDuration: const Duration(milliseconds: 400),
                fadeDuration: const Duration(milliseconds: 400),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: patientImage == 'null'
                      ? Image.asset(
                          "assets/icons/profile pic.png",
                          height: size.height * .09,
                          width: size.width * .18,
                          color: kMainColor,
                        )
                      : FancyShimmerImage(
                          height: size.height * .09,
                          width: size.width * .18,
                          boxFit: BoxFit.fill,
                          errorWidget: const Image(
                            image: AssetImage("assets/icons/profile pic.png"),
                          ),
                          imageUrl: patientImage,
                        ),
                ),
              ),
              SizedBox(
                width: size.width * .015,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * .7,
                    child: Text(
                      patientName,
                      style: black14B500,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: size.width * .7,
                    child: Text(
                      testName,
                      style: grey13B500,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Ph : ",
                            style: grey12B500,
                          ),
                          Text(
                            mobileNumber,
                            style: black13B500,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * .03,
                      ),
                      Row(
                        children: [
                          Text(
                            "Age : ",
                            style: grey12B500,
                          ),
                          Text(
                            patientAge,
                            style: black13B500,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: size.height * .002),
          Row(
            children: [
              Text(
                "Doctor : ",
                style: grey12B500,
              ),
              SizedBox(
                width: size.width * .7,
                child: Text(
                  doctorName,
                  style: black13B500,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          note == 'null'
              ? const SizedBox()
              : Column(
                  children: [
                    SizedBox(height: size.height * .002),
                    Row(
                      children: [
                        Text(
                          "Note : ",
                          style: grey12B500,
                        ),
                        SizedBox(
                          width: size.width * .7,
                          child: Text(
                            note,
                            style: black13B500,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
