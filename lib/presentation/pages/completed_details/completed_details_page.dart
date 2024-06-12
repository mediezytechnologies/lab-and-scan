import 'package:flutter/material.dart';
import '../../common_widgets/custom_routing.dart';
import '../../common_widgets/data_card_widget.dart';
import '../../common_widgets/user_section_widget.dart';
import 'widget/view_document_widget.dart';
import 'widget/view_uploaded_document_widget.dart';
import 'dart:developer';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

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
  String remotePDFpath = "";

  @override
  void initState() {
    super.initState();

    createFileOfPdfUrl().then((f) {
      remotePDFpath = f.path;
      log("remotePDFpath $remotePDFpath");
    });
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
                               CustomPageRoute(
                                    route:
                                    ViewUploadedDocumentWidget(
                                  path: remotePDFpath,
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

  Future<File> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();

    try {
      final url = widget.uploadedDocument;
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
