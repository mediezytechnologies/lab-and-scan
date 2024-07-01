import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/app_colors.dart';
import '../core/text_style.dart';

class DoctorSectionWidget extends StatelessWidget {
  const DoctorSectionWidget({
    super.key,
    required this.size,
    required this.doctorName,
    required this.clinicName,
    required this.doctorImage,
  });

  final Size size;
  final String doctorName;
  final String clinicName;
  final String doctorImage;

  @override
  Widget build(BuildContext context) {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Doctor name :", style: grey13B500),
              SizedBox(height: size.height * .0002),
              SizedBox(
                width: size.width * .7,
                child: Text(
                  doctorName,
                  style: black14B500,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: size.height * .002),
              Text("Clinic name :", style: grey13B500),
              SizedBox(height: size.height * .0002),
              SizedBox(
                width: size.width * .7,
                child: Text(
                  clinicName,
                  style: black14B500,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          FadedScaleAnimation(
            scaleDuration: const Duration(milliseconds: 400),
            fadeDuration: const Duration(milliseconds: 400),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: doctorImage == 'null'
                  ? Image.asset(
                      "assets/icons/profile pic.png",
                      height: size.height * .09,
                      width: size.width * .18,
                      color: kMainColor,
                    )
                  : FancyShimmerImage(
                      height: size.height * .09,
                      width: size.width * .18,
                      boxFit: BoxFit.cover,
                      errorWidget: const Image(
                        image: AssetImage("assets/icons/profile pic.png"),
                      ),
                      imageUrl: doctorImage,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
