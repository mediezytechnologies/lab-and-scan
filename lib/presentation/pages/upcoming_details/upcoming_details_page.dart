// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/user_section_widget.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/home_page.dart';
import 'package:mediezy_lab_scan/presentation/pages/upcoming_details/widget/view_document_bottom_card_widget.dart';
import '../../../application/home/upload_document/upload_document_bloc.dart';
import '../../../domain/home/common_upcoming_test/labtest.dart';
import '../../common_widgets/custome_formfield_widget.dart';
import '../../common_widgets/submit_button_widget.dart';
import '../../core/general_services.dart';
import '../../core/text_style.dart';
import '../../common_widgets/data_card_widget.dart';
import 'widget/test_card_widget.dart';
import 'widget/upload_card_widget.dart';

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
      required this.testName,
      required this.appointmentId});

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
  final List<Labtest> testName;
  final String appointmentId;

  @override
  State<UpComingDetailsPage> createState() => _UpComingDetailsPageState();
}

class _UpComingDetailsPageState extends State<UpComingDetailsPage> {
  final TextEditingController noteController = TextEditingController();
  final ImagePicker imagePicker = ImagePicker();
  String? imageTemporary;
  Set<int> selectedTestIndices = {};
  List<int> selectedTestIds = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Upcoming details", style: white16B500),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            resetUploadedDocumetToNull();
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
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
              SizedBox(height: size.height * .011),
              DataCardWidget(title: "Doctor name", value: widget.doctorName),
              SizedBox(height: size.height * .011),
              DataCardWidget(title: "Clinic name", value: widget.clinicName),
              SizedBox(height: size.height * .011),
              BlocBuilder<UploadDocumentBloc, UploadDocumentState>(
                builder: (context, state) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kCardColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Test names :", style: grey13B500),
                        SizedBox(height: size.height * .005),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.testName.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (state.selectedTestIndicesSet
                                    .contains(index)) {
                                  context.read<UploadDocumentBloc>().add(
                                        UploadDocumentEvent
                                            .removeFromSelectTestIds(
                                                index,
                                                widget.testName[index]
                                                    .labtestId!),
                                      );
                                } else {
                                  context.read<UploadDocumentBloc>().add(
                                        UploadDocumentEvent.addToSelectTestIds(
                                            index,
                                            widget.testName[index].labtestId!),
                                      );
                                }
                              },
                              child: TestCardWidget(
                                icon:
                                    state.selectedTestIndicesSet.contains(index)
                                        ? IconlyBold.tick_square
                                        : IconlyLight.tick_square,
                                index: index,
                                testName: widget.testName[index].labtestName
                                    .toString(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: size.height * .011),
              Text("Upload :", style: grey13B500),
              SizedBox(height: size.height * .005),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      selectImageFromGallery();
                    },
                    child: UploadCardWidget(
                      width: size.width * .45,
                      title: "Gallery",
                      icon: const Icon(IconlyLight.image),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectImageFromCamera();
                    },
                    child: UploadCardWidget(
                      width: size.width * .45,
                      title: "Camera",
                      icon: const Icon(IconlyLight.camera),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * .011),
              GestureDetector(
                onTap: () {
                  selectPdfFromFiles();
                },
                child: const UploadCardWidget(
                  width: double.infinity,
                  title: "Pdf",
                  icon: Icon(IconlyLight.paper),
                ),
              ),
              SizedBox(height: size.height * .011),
              BlocBuilder<UploadDocumentBloc, UploadDocumentState>(
                builder: (context, state) {
                  return state.selectedDocument != null
                      ? Column(
                          children: [
                            ViewDocumentBottomCardWidget(
                              uploadedDocument:
                                  state.selectedDocument.toString(),
                              closeFunction: () async {
                                await resetUploadedDocumetToNull();
                              },
                            ),
                            SizedBox(height: size.height * .011),
                          ],
                        )
                      : const SizedBox();
                },
              ),
              Text("Note :", style: grey13B500),
              SizedBox(height: size.height * .005),
              CustomeFormFieldWidget(
                controller: noteController,
                hintText: "Enter note",
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
                maxLine: 4,
              ),
              SizedBox(height: size.height * .020),
              BlocConsumer<UploadDocumentBloc, UploadDocumentState>(
                listener: (context, state) {
                  if (state.isError) {
                    GeneralServices.instance.showToastMessage(state.message);
                  }
                  if (state.status) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return SubmitButtonWidget(
                    buttonText: "Upload report",
                    loading: state.isLoading,
                    onTap: () async {
                      if (state.selectedTestIdsList.isEmpty) {
                        GeneralServices.instance
                            .showToastMessage("Please select the test");
                      } else {
                        BlocProvider.of<UploadDocumentBloc>(context).add(
                          UploadDocumentEvent.upload(
                            appointmentId: widget.appointmentId,
                            clinicId: widget.clinicId,
                            doctorId: widget.doctorId,
                            patientId: widget.patientId,
                            imagePath: state.selectedDocument,
                            note: noteController.text,
                            testIds: state.selectedTestIdsList,
                          ),
                        );
                      }
                      await resetUploadedDocumetToNull();
                    },
                  );
                },
              ),
              SizedBox(height: size.height * .011),
            ],
          ),
        ),
      ),
    );
  }

  Future selectImageFromGallery() async {
    var image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 30,
    );
    if (image == null) return;
    imageTemporary = image.path;
    BlocProvider.of<UploadDocumentBloc>(context)
        .add(UploadDocumentEvent.selectImageFromGallery(imageTemporary));
    log("gallery image >>>$imageTemporary");
  }

  Future selectImageFromCamera() async {
    var image = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 30,
    );
    if (image == null) return;
    imageTemporary = image.path;
    BlocProvider.of<UploadDocumentBloc>(context)
        .add(UploadDocumentEvent.selectImageFromCamera(imageTemporary));
    log("camera image >>>$imageTemporary");
  }

  Future selectPdfFromFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      imageTemporary = file.path;
      BlocProvider.of<UploadDocumentBloc>(context)
          .add(UploadDocumentEvent.selectPdfFiles(imageTemporary));
      log("PDF file >>>$imageTemporary");
    } else {}
  }

  Future<void> resetUploadedDocumetToNull() async {
    BlocProvider.of<UploadDocumentBloc>(context)
        .add(const UploadDocumentEvent.resetSelectedTestData());
  }

  @override
  void dispose() {
    noteController.dispose();
    imageTemporary = null;
    super.dispose();
  }
}
