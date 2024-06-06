import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class UpComingCardWidget extends StatelessWidget {
  const UpComingCardWidget(
      {super.key,
      required this.patientImage,
      required this.patientName,
      required this.testName,
      required this.mobileNumber,
      required this.patientAge});

  final String patientImage;
  final String patientName;
  final String testName;
  final String mobileNumber;
  final String patientAge;

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
      child: Row(
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
                    : Image.network(
                        patientImage,
                        height: size.height * .09,
                        width: size.width * .18,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/icons/profile pic.png",
                            height: size.height * .09,
                            width: size.width * .18,
                            color: kMainColor,
                          ),
                        ),
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: Shimmer.fromColors(
                              baseColor: kShimmerBaseColor,
                              highlightColor: kShimmerHighlightColor,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(80.r),
                                ),
                              ),
                            ),
                          );
                        },
                      )),
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
                ),
              ),
              SizedBox(
                width: size.width * .7,
                child: Text(
                  testName,
                  style: grey13B500,
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
    );
  }
}
