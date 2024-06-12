// import 'dart:developer';

// import 'package:flutter/material.dart';

// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';


// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       title: 'Pdfrx example',
// //       home: MainPage(),
// //     );
// //   }
// // }

// // class MainPage extends StatefulWidget {
// //   const MainPage({super.key});

// //   @override
// //   State<MainPage> createState() => _MainPageState();
// // }

// // class _MainPageState extends State<MainPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: IconButton(
// //           icon: const Icon(Icons.menu),
// //           onPressed: () {
           
// //           },
// //         ),
// //         title: const Text('Pdfrx example'),
// //       ),
// //       body: PdfViewer.
// //       uri(Uri.parse('https://test.mediezy.com/labdocuments/1718095056_dummy.pdf')
// //         ,

       
// //       ),
// //     );
// //   }
// // }


   
// class MyAppPdf extends StatefulWidget {
//   const MyAppPdf({super.key});

//   @override
//   State<MyAppPdf> createState() => _MyAppPdfState();
// }

// class _MyAppPdfState extends State<MyAppPdf> {
 
 
//   String remotePDFpath = "";
 

//   @override
//   void initState() {
//     super.initState();
   

//     createFileOfPdfUrl().then((f) {
     
//         remotePDFpath = f.path;
//         log("remotePDFpath $remotePDFpath");
     
//     });
//   }

//   Future<File> createFileOfPdfUrl() async {
//     Completer<File> completer = Completer();
   
//     try {
     
//       const url = "https://test.mediezy.com/labdocuments/1718095056_dummy.pdf";
//       final filename = url.substring(url.lastIndexOf("/") + 1);
//       var request = await HttpClient().getUrl(Uri.parse(url));
//       var response = await request.close();
//       var bytes = await consolidateHttpClientResponseBytes(response);
//       var dir = await getApplicationDocumentsDirectory();
//         log("filename $filename");
//          log("request $request");
//           log("response $response"); 
//           log("bytes $bytes");
//           log("dir $dir");
         
//       log("Download files");
//       log("${dir.path}/$filename");
//       File file = File("${dir.path}/$filename");

//       await file.writeAsBytes(bytes, flush: true);
//       completer.complete(file);
//     } catch (e) {
//       throw Exception('Error parsing asset file!');
//     }

//     return completer.future;
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter PDF View',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Plugin example app')),
//         body: Center(child: Builder(
//           builder: (BuildContext context) {
//             return Column(
//               children: <Widget>[
             
              
//                 TextButton(
//                   child: Text("Remote PDF"),
//                   onPressed: () {
//                     if (remotePDFpath.isNotEmpty) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => PDFScreen(path: remotePDFpath),
//                         ),
//                       );
//                     }
//                   },
//                 ),
               
//               ],
//             );
//           },
//         )),
//       ),
//     );
//   }
// }

// class PDFScreen extends StatefulWidget {
//   final String? path;

//   PDFScreen({Key? key, this.path}) : super(key: key);

//   _PDFScreenState createState() => _PDFScreenState();
// }

// class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
//   final Completer<PDFViewController> _controller =
//       Completer<PDFViewController>();


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Document"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Stack(
//         children: <Widget>[
//           PDFView(
//             filePath: widget.path,
//             enableSwipe: true,
//             swipeHorizontal: true,
//             autoSpacing: false,
//             pageFling: true,
//             pageSnap: true,
//            // defaultPage: currentPage!,
//             fitPolicy: FitPolicy.BOTH,
//             preventLinkNavigation:
//                 false, // if set to true the link is handled in flutter
//             onRender: (_pages) {
             
//             },
           
            
//             onViewCreated: (PDFViewController pdfViewController) {
//               _controller.complete(pdfViewController);
//             },
//             onLinkHandler: (String? uri) {
//               print('goto uri: $uri');
//             },
            
           
//           ),
         
//         ],
//       ),
//       // floatingActionButton: FutureBuilder<PDFViewController>(
//       //   future: _controller.future,
//       //   builder: (context, AsyncSnapshot<PDFViewController> snapshot) {
//       //     if (snapshot.hasData) {
//       //       return FloatingActionButton.extended(
//       //         label: Text("Go to ${pages! ~/ 2}"),
//       //         onPressed: () async {
//       //           await snapshot.data!.setPage(pages! ~/ 2);
//       //         },
//       //       );
//       //     }

//       //     return Container();
//       //   },
//       // ),
//     );
//   }
// }
