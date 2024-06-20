// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/home/common_completed_test/document.dart';
import '../../common_widgets/custom_routing.dart';
import '../../common_widgets/data_card_widget.dart';
import '../../common_widgets/user_section_widget.dart';
import '../../core/app_colors.dart';
import '../../core/text_style.dart';
import 'widget/view_document_widget.dart';
import 'widget/view_uploaded_document_widget.dart';
import 'dart:developer';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CompletedDetailsPage extends StatefulWidget {
  const CompletedDetailsPage({
    super.key,
    required this.patientAge,
    required this.patientImage,
    required this.patientMobileNo,
    required this.patientName,
    required this.doctorName,
    required this.clinicName,
    required this.tests,
  });

  final String patientAge;
  final String patientImage;
  final String patientMobileNo;
  final String patientName;
  final String doctorName;
  final String clinicName;
  final List<Document> tests;

  @override
  State<CompletedDetailsPage> createState() => _CompletedDetailsPageState();
}

class _CompletedDetailsPageState extends State<CompletedDetailsPage> {
  final Map<String, String> remotePDFpaths = {};

  @override
  void initState() {
    super.initState();

    for (final document in widget.tests) {
      if (document.documentUpload != null) {
        createFileOfPdfUrl(document.documentUpload!).then((f) {
          remotePDFpaths[document.documentUpload!] = f.path;
          log("remotePDFpath ${f.path} for ${document.documentUpload}");
        });
      }
    }
  }

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
              SizedBox(height: size.height * .011),
              DataCardWidget(title: "Doctor name", value: widget.doctorName),
              SizedBox(height: size.height * .011),
              DataCardWidget(title: "Clinic name", value: widget.clinicName),
              SizedBox(height: size.height * .011),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Completed tests :", style: grey13B500),
                    SizedBox(height: size.height * .005),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.tests.length,
                      itemBuilder: (context, index) {
                        final document = widget.tests[index];
                        return Container(
                          padding: const EdgeInsets.all(8),
                          margin: EdgeInsets.only(bottom: size.height * 0.005),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Test section : ${index + 1}',
                                  style: grey13B500),
                              SizedBox(height: size.height * 0.005),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: document.labtests!.length,
                                itemBuilder: (context, labTestIndex) {
                                  final labTest =
                                      document.labtests![labTestIndex];
                                  return Container(
                                    margin: EdgeInsets.only(
                                        bottom: size.height * 0.005),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: kCardColor,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${labTestIndex + 1}. ',
                                          style: grey12B500,
                                        ),
                                        SizedBox(
                                          width: size.width * 0.75,
                                          child: Text(
                                            labTest.labtestName.toString(),
                                            style: black12B500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              document.documentUpload == null
                                  ? const SizedBox()
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            final pdfPath = remotePDFpaths[
                                                document.documentUpload]!;
                                            Navigator.push(
                                              context,
                                              CustomPageRoute(
                                                route:
                                                    ViewUploadedDocumentWidget(
                                                  path: pdfPath,
                                                  uploadedDocument: document
                                                      .documentUpload
                                                      .toString(),
                                                ),
                                              ),
                                            );
                                          },
                                          child: const ViewDocumentWidget(),
                                        ),
                                      ],
                                    ),
                              document.notes == null
                                  ? const SizedBox()
                                  : Column(
                                      children: [
                                        SizedBox(height: size.height * 0.005),
                                        DataCardWidget(
                                          title: "Note",
                                          value: document.notes.toString(),
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * .013),
            ],
          ),
        ),
      ),
    );
  }

  Future<File> createFileOfPdfUrl(String documentUrl) async {
    Completer<File> completer = Completer();

    try {
      final url = documentUrl;
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }
}
