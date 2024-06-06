import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/pages/upcoming_details/widget/user_section_widget.dart';
import '../../common_widgets/custome_formfield_widget.dart';
import '../../common_widgets/submit_button_widget.dart';
import '../../core/text_style.dart';
import 'widget/data_card_widget.dart';

class UpComingDetailsPage extends StatefulWidget {
  const UpComingDetailsPage(
      {super.key,
      required this.patientName,
      required this.patientImage,
      required this.patientMobileNo,
      required this.patientAge,
      required this.doctorName,
      required this.clinicName,
      required this.labId,
      required this.doctorId,
      required this.clinicId,
      required this.patientId,
      required this.testName});

  final String patientName;
  final String patientImage;
  final String patientMobileNo;
  final String patientAge;
  final String doctorName;
  final String clinicName;
  final String labId;
  final String doctorId;
  final String clinicId;
  final String patientId;
  final String testName;

  @override
  State<UpComingDetailsPage> createState() => _UpComingDetailsPageState();
}

class _UpComingDetailsPageState extends State<UpComingDetailsPage> {
  final TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming details"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserSectionWidget(
                patientAge: widget.patientAge,
                patientImage: widget.patientImage,
                patientMobileNo: widget.patientMobileNo,
                patientName: widget.patientName,
              ),
              SizedBox(height: size.height * .02),
              DataCardWidget(title: "Test names", value: widget.testName),
              SizedBox(height: size.height * .015),
              DataCardWidget(title: "Doctor name", value: widget.doctorName),
              SizedBox(height: size.height * .015),
              DataCardWidget(title: "Clinic name", value: widget.clinicName),
              SizedBox(height: size.height * .015),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kCardColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upload Image", style: black14B500),
                      const Icon(IconlyLight.image)
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * .015),
              Text("Note :", style: grey13B500),
              SizedBox(height: size.height * .005),
              CustomeFormFieldWidget(
                controller: noteController,
                hintText: "Enter note",
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
                maxLine: 4,
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: size.height * .005),
              SubmitButtonWidget(
                  buttonText: "Upload Report", loading: false, onTap: () {}),
              SizedBox(height: size.height * .005),
            ],
          ),
        ),
      ),
    );
  }
}
