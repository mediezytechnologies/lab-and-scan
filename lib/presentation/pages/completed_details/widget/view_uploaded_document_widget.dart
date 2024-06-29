// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/text_style.dart';

class ViewUploadedDocumentWidget extends StatelessWidget {
  ViewUploadedDocumentWidget({
    super.key,
    required this.uploadedDocument,
    this.path,
  });

  final String uploadedDocument;
  final String? path;
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPdf = uploadedDocument.toLowerCase().endsWith('.pdf');
    return Scaffold(
      appBar: AppBar(
        title:  Text("Uploaded document",style: white16B500),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: isPdf
                ? PDFView(
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
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: FancyShimmerImage(
                      height: size.height * 0.7,
                      width: size.width * 0.8,
                      boxFit: BoxFit.contain,
                      errorWidget: const Image(
                        image: AssetImage("assets/icons/profile pic.png"),
                      ),
                      imageUrl: uploadedDocument,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
