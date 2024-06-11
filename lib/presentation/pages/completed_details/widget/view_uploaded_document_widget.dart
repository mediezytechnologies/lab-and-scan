import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ViewUploadedDocumentWidget extends StatelessWidget {
  const ViewUploadedDocumentWidget({super.key, required this.uploadedDocument});

  final String uploadedDocument;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPdf = uploadedDocument.toLowerCase().endsWith('.pdf');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uploaded document"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: isPdf
              ? PDFView(
                  filePath: uploadedDocument,
                )
              : Image.network(
                  uploadedDocument,
                  height: size.height * 0.4,
                  width: size.width * 0.8,
                ),
        ),
      ),
    );
  }
}
