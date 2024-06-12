// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mediezy_lab_scan/presentation/pages/home/widgets/up_coming_card_widget.dart';
// import '../../../../application/home/get_up_coming/get_up_coming_bloc.dart';
// import '../../../core/app_colors.dart';
// import '../../upcoming_details/upcoming_details_page.dart';
// import 'rich_text_widget.dart';

// class UpComingWidget extends StatefulWidget {
//   const UpComingWidget({super.key});

//   @override
//   State<UpComingWidget> createState() => _UpComingWidgetState();
// }

// class _UpComingWidgetState extends State<UpComingWidget> {
//   Future<void> _refreshData() async {
//     BlocProvider.of<GetUpComingBloc>(context)
//         .add(const GetUpComingEvent.getUpComing());
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return RefreshIndicator(
//       color: kMainColor,
//       onRefresh: _refreshData,
//       child: BlocBuilder<GetUpComingBloc, GetUpComingState>(
//         builder: (context, state) {
//           if (state.isLoading) {
//             return Center(
//               child: CircularProgressIndicator(
//                 color: kMainColor,
//               ),
//             );
//           }
//           if (state.isError) {
//             return Center(
//               child: Text(state.message),
//             );
//           }
//           return state.getUpComing.isEmpty
//               ? SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: ConstrainedBox(
//                     constraints: BoxConstraints(
//                       minHeight: size.height,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image(
//                           image: const AssetImage(
//                               "assets/images/no_appopintments.png"),
//                           height: size.height * .3,
//                           width: size.width * .7,
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               : Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: RichTextWidget(
//                         title: "Pending",
//                         pendingCount: state.getUpComing.length,
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 8.w, vertical: 4.h),
//                         itemCount: state.getUpComing.length,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => UpComingDetailsPage(
//                                     testName: state.getUpComing[index].labtest
//                                         .toString(),
//                                     patientName: state
//                                         .getUpComing[index].firstname
//                                         .toString(),
//                                     patientImage: state
//                                         .getUpComing[index].userImage
//                                         .toString(),
//                                     patientMobileNo: state
//                                         .getUpComing[index].mobileNo
//                                         .toString(),
//                                     patientAge:
//                                         state.getUpComing[index].age.toString(),
//                                     doctorName: state
//                                         .getUpComing[index].doctorName
//                                         .toString(),
//                                     clinicName: state
//                                         .getUpComing[index].clinicName
//                                         .toString(),
//                                     labId: state.getUpComing[index].labId
//                                         .toString(),
//                                     doctorId: state.getUpComing[index].doctorId
//                                         .toString(),
//                                     clinicId: state.getUpComing[index].clinicId
//                                         .toString(),
//                                     patientId: state
//                                         .getUpComing[index].patientId
//                                         .toString(),
//                                   ),
//                                 ),
//                               );
//                             },
//                             child: Column(
//                               children: [
//                                 UpComingCardWidget(
//                                   mobileNumber: state
//                                       .getUpComing[index].mobileNo
//                                       .toString(),
//                                   patientAge:
//                                       state.getUpComing[index].age.toString(),
//                                   patientImage: state
//                                       .getUpComing[index].userImage
//                                       .toString(),
//                                   patientName: state
//                                       .getUpComing[index].firstname
//                                       .toString(),
//                                   testName: state.getUpComing[index].labtest
//                                       .toString(),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/custom_routing.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/up_coming_card_widget.dart';
import '../../../../application/home/get_up_coming/get_up_coming_bloc.dart';
import '../../../core/app_colors.dart';
import '../../upcoming_details/upcoming_details_page.dart';
import 'rich_text_widget.dart';

class UpComingWidget extends StatefulWidget {
  const UpComingWidget({super.key});

  @override
  State<UpComingWidget> createState() => _UpComingWidgetState();
}

class _UpComingWidgetState extends State<UpComingWidget> {
  Future<void> _refreshData() async {
    BlocProvider.of<GetUpComingBloc>(context)
        .add(const GetUpComingEvent.getUpComing());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return RefreshIndicator(
      color: kMainColor,
      onRefresh: _refreshData,
      child: BlocBuilder<GetUpComingBloc, GetUpComingState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: kMainColor,
              ),
            );
          }
          if (state.isError) {
            return Center(
              child: Text(state.message),
            );
          }
          return state.getUpComing.isEmpty
              ? Stack(
                  children: [
                    SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: size.height,
                        ),
                        child: Container(),
                      ),
                    ),
                    Center(
                      child: Image(
                        image: const AssetImage(
                            "assets/images/no_appopintments.png"),
                        height: size.height * .3,
                        width: size.width * .7,
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: RichTextWidget(
                        title: "Pending",
                        pendingCount: state.getUpComing.length,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        itemCount: state.getUpComing.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                    route: UpComingDetailsPage(
                                      appointmentId: state
                                          .getUpComing[index].appointmentId
                                          .toString(),
                                      testName: state.getUpComing[index].labtest
                                          .toString(),
                                      patientName: state
                                          .getUpComing[index].firstname
                                          .toString(),
                                      patientImage: state
                                          .getUpComing[index].userImage
                                          .toString(),
                                      patientMobileNo: state
                                          .getUpComing[index].mobileNo
                                          .toString(),
                                      patientAge: state.getUpComing[index].age
                                          .toString(),
                                      doctorName: state
                                          .getUpComing[index].doctorName
                                          .toString(),
                                      clinicName: state
                                          .getUpComing[index].clinicName
                                          .toString(),
                                      labId: state.getUpComing[index].labId
                                          .toString(),
                                      doctorId: state
                                          .getUpComing[index].doctorId
                                          .toString(),
                                      clinicId: state
                                          .getUpComing[index].clinicId
                                          .toString(),
                                      patientId: state
                                          .getUpComing[index].patientId
                                          .toString(),
                                    ),
                                  ));
                            },
                            child: Column(
                              children: [
                                UpComingCardWidget(
                                  mobileNumber: state
                                      .getUpComing[index].mobileNo
                                      .toString(),
                                  patientAge:
                                      state.getUpComing[index].age.toString(),
                                  patientImage: state
                                      .getUpComing[index].userImage
                                      .toString(),
                                  patientName: state
                                      .getUpComing[index].firstname
                                      .toString(),
                                  testName: state.getUpComing[index].labtest
                                      .toString(),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
