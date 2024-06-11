import 'package:flutter/material.dart';
import '../../common_widgets/data_card_widget.dart';
import '../../common_widgets/user_section_widget.dart';
import 'widget/view_document_widget.dart';
import 'widget/view_uploaded_document_widget.dart';

class CompletedDetailsPage extends StatefulWidget {
  const CompletedDetailsPage(
      {super.key,
      required this.patientAge,
      required this.patientImage,
      required this.patientMobileNo,
      required this.patientName,
      required this.doctorName,
      required this.clinicName,
      required this.note,
      required this.uploadedDocument,
      required this.testName});

  final String patientAge;
  final String patientImage;
  final String patientMobileNo;
  final String patientName;
  final String doctorName;
  final String clinicName;
  final String note;
  final String uploadedDocument;
  final String testName;

  @override
  State<CompletedDetailsPage> createState() => _CompletedDetailsPageState();
}

class _CompletedDetailsPageState extends State<CompletedDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Completed details"),
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
              SizedBox(height: size.height * .013),
              DataCardWidget(title: "Doctor name", value: widget.doctorName),
              SizedBox(height: size.height * .013),
              DataCardWidget(title: "Clinic name", value: widget.clinicName),
              widget.note == 'null'
                  ? const SizedBox()
                  : Column(
                      children: [
                        SizedBox(height: size.height * .013),
                        DataCardWidget(title: "Note", value: widget.note),
                      ],
                    ),
              widget.uploadedDocument == 'null'
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * .013),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ViewUploadedDocumentWidget(
                                  uploadedDocument: widget.uploadedDocument,
                                ),
                              ),
                            );
                          },
                          child: const ViewDocumentWidget(),
                        ),
                      ],
                    ),
              SizedBox(height: size.height * .013),
            ],
          ),
        ),
      ),
    );
  }
}
