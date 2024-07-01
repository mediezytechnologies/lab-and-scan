import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/home/common_upcoming/labtest.dart';
import '../../domain/home/common_upcoming/scantest.dart';
import '../core/app_colors.dart';
import '../core/text_style.dart';

class UpComingCardWidget extends StatelessWidget {
  const UpComingCardWidget({
    super.key,
    required this.patientImage,
    required this.patientName,
    required this.mobileNumber,
    required this.patientAge,
    required this.pensingShow,
    required this.labTestNames,
    required this.scanTestNames,
  });

  final String patientImage;
  final String patientName;
  final List<Labtest> labTestNames;
  final List<Scantest> scanTestNames;
  final String mobileNumber;
  final String patientAge;
  final bool pensingShow;

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                          boxFit: BoxFit.cover,
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
                    ),
                  ),
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
                    width: size.height * .03,
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
              ),
            ],
          ),
          SizedBox(
            width: size.height * .03,
          ),
          labTestNames.isEmpty
              ? const SizedBox()
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lab test : ", style: grey12B500),
                    SizedBox(
                      width: size.width * .7,
                      child: Text(
                        labTestNames.length == 2
                            ? "${labTestNames.first.labtestName} & ${labTestNames.last.labtestName}"
                            : labTestNames.length > 2
                                ? ("${labTestNames.first.labtestName} & ${labTestNames.last.labtestName}...")
                                : "${labTestNames.first.labtestName}",
                        style: black13B500,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
          scanTestNames.isEmpty
              ? const SizedBox()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.height * .03,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Scan test : ", style: grey12B500),
                        SizedBox(
                          width: size.width * .7,
                          child: Text(
                            scanTestNames.length == 2
                                ? "${scanTestNames.first.scantestName} & ${scanTestNames.last.scantestName}"
                                : scanTestNames.length > 2
                                    ? ("${scanTestNames.first.scantestName} & ${scanTestNames.last.scantestName}...")
                                    : "${scanTestNames.first.scantestName}",
                            style: black13B500,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          pensingShow
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pending tests : ",
                      style: grey12B500,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        labTestNames.isEmpty
                            ? const SizedBox()
                            : Row(
                                children: [
                                  Text(
                                    "Lab : ",
                                    style: grey12B500,
                                  ),
                                  Text(
                                    labTestNames.length.toString(),
                                    style: black13B500,
                                  ),
                                  SizedBox(
                                    width: size.width * .03,
                                  ),
                                ],
                              ),
                        scanTestNames.isEmpty
                            ? const SizedBox()
                            : Row(
                                children: [
                                  Text(
                                    "Scan : ",
                                    style: grey12B500,
                                  ),
                                  Text(
                                    scanTestNames.length.toString(),
                                    style: black13B500,
                                  ),
                                ],
                              ),
                      ],
                    )
                  ],
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
