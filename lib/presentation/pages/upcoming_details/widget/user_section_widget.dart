import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class UserSectionWidget extends StatelessWidget {
  const UserSectionWidget(
      {super.key,
      required this.patientImage,
      required this.patientAge,
      required this.patientName,
      required this.patientMobileNo});

  final String patientImage;
  final String patientAge;
  final String patientName;
  final String patientMobileNo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
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
                        height: size.height * .125,
                        width: size.width * .24,
                        color: kMainColor,
                      )
                    : Image.network(
                        patientImage,
                        height: size.height * .125,
                        width: size.width * .24,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/icons/profile pic.png",
                            height: size.height * .1125,
                            width: size.width * .24,
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
            width: size.width * .018,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * .55,
                child: Text(
                  patientName,
                  style: black15B500,
                ),
              ),
              SizedBox(height: size.height * .01),
              Row(
                children: [
                  Text(
                    "Ph : ",
                    style: grey13B500,
                  ),
                  Text(
                    patientMobileNo,
                    style: black14B500,
                  ),
                ],
              ),
              SizedBox(height: size.height * .01),
              Row(
                children: [
                  Text(
                    "Age : ",
                    style: grey13B500,
                  ),
                  Text(
                    patientAge,
                    style: black14B500,
                  ),
                ],
              ),
              SizedBox(height: size.height * .01),
            ],
          ),
        ],
      ),
    );
  }
}
