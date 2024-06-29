// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/text_style.dart';

class ViewDocumentShowWidget extends StatefulWidget {
  const ViewDocumentShowWidget({super.key, required this.uploadedDocument});

  final String uploadedDocument;

  @override
  State<ViewDocumentShowWidget> createState() => _ViewDocumentShowWidgetState();
}

class _ViewDocumentShowWidgetState extends State<ViewDocumentShowWidget> {
  final ValueNotifier<String> remotePDFpath = ValueNotifier<String>("");
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      remotePDFpath.value = f;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPdf = widget.uploadedDocument.toLowerCase().endsWith('.pdf');
    return Scaffold(
      appBar: AppBar(
        title:  Text("View uploaded document",style: white16B500),
        centerTitle: true,
      ),
      body: Center(
        child: isPdf
            ? ValueListenableBuilder<String>(
                valueListenable: remotePDFpath,
                builder: (context, path, _) {
                  return path.isEmpty
                      ? const CircularProgressIndicator()
                      : PDFView(
                          filePath: path,
                          enableSwipe: true,
                          swipeHorizontal: true,
                          autoSpacing: false,
                          pageFling: true,
                          pageSnap: true,
                          fitPolicy: FitPolicy.BOTH,
                          preventLinkNavigation: false,
                          onViewCreated: (PDFViewController pdfViewController) {
                            _controller.complete(pdfViewController);
                          },
                          onLinkHandler: (String? uri) {
                            log('goto uri: $uri');
                          },
                        );
                },
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.file(
                  File(widget.uploadedDocument),
                  fit: BoxFit.contain,
                  height: size.height * 0.7,
                  width: size.width * 0.8,
                ),
              ),
      ),
    );
  }

  Future<String> createFileOfPdfUrl() async {
    final directory = await getTemporaryDirectory();
    log("directory>>>> $directory");
    final path = directory.path;
    final fileName = widget.uploadedDocument.split('/').last;
    final file = File('$path/$fileName');
    try {
      await file
          .writeAsBytes(await File(widget.uploadedDocument).readAsBytes());
      return file.path;
    } catch (e) {
      log('Error copying file: $e');
      return widget.uploadedDocument;
    }
  }
}
