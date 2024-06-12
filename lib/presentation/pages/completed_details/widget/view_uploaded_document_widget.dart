import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewUploadedDocumentWidget extends StatelessWidget {
  const ViewUploadedDocumentWidget({super.key, required this.uploadedDocument});

  final String uploadedDocument;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final isPdf = uploadedDocument.toLowerCase().endsWith('.pdf');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uploaded document"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding( 
          padding: const EdgeInsets.all(8.0),
<<<<<<< HEAD
          child: 
          // isPdf
          //     ? SfPdfViewer.network(
          //         'https://test.mediezy.com/labdocuments/1718095056_dummy.pdf',
          //       )
          //     :
               ClipRRect(
=======
          child: isPdf
              ? SfPdfViewer.network(
        
             
                
                pageLayoutMode: PdfPageLayoutMode.continuous,
                  uploadedDocument,
                )
              : ClipRRect(
>>>>>>> 15f30a7d15d152d1d8047d2b4fa3ba8647e3fa3b
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
    );
  }
}
