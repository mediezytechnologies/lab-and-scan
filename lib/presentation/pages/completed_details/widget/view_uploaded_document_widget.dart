import 'package:flutter/material.dart';

class ViewUploadedDocumentWidget extends StatelessWidget {
  const ViewUploadedDocumentWidget({super.key, required this.uploadedDocument});

  final String uploadedDocument;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uploaded document"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: NetworkImage(uploadedDocument),
            height: size.height * .4,
            width: size.width * .8,
          ),
        ),
      ),
    );
  }
}
