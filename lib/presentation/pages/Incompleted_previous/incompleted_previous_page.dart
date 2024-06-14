import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../application/home/incompleted_previous/incompleted_previous_bloc.dart';
import '../../common_widgets/calender_widget.dart';
import '../../common_widgets/up_coming_card_widget.dart';
import '../../core/app_colors.dart';
import '../upcoming_details/upcoming_details_page.dart';

class IncompletedPreviousPage extends StatefulWidget {
  const IncompletedPreviousPage({super.key});

  @override
  State<IncompletedPreviousPage> createState() =>
      _IncompletedPreviousPageState();
}

class _IncompletedPreviousPageState extends State<IncompletedPreviousPage> {
  @override
  void initState() {
    BlocProvider.of<IncompletedPreviousBloc>(context).add(
      IncompletedPreviousEvent.incompletedPrevious(formatDate()),
    );
    super.initState();
  }

  String formatDate() {
    return DateFormat('yyyy-MM-dd').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incompleted appointments"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DatePickerDemoClass(
              height: size.height * .17,
              width: size.width * .145,
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: kMainColor,
              selectedTextColor: kCardColor,
              onDateChange: (date) {
                log("selected date >>>$date");
                String formattedDate = DateFormat('yyyy-MM-dd').format(date);
                BlocProvider.of<IncompletedPreviousBloc>(context).add(
                  IncompletedPreviousEvent.incompletedPrevious(formattedDate),
                );
              },
              dateTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width > 450 ? 10.sp : 16.sp),
              dayTextStyle:
                  TextStyle(fontSize: size.width > 450 ? 8.sp : 12.sp),
              monthTextStyle:
                  TextStyle(fontSize: size.width > 450 ? 8.sp : 12.sp),
            ),
          ),
          SizedBox(height: size.height * .02),
          BlocBuilder<IncompletedPreviousBloc, IncompletedPreviousState>(
            builder: (context, state) {
              if (state.isLoading) {
                return SizedBox(
                  height: size.height * .55,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: kMainColor,
                    ),
                  ),
                );
              }
              if (state.isError) {
                return Center(
                  child: Text(state.message),
                );
              }
              return state.getPreviousInompleted.isEmpty
                  ? SizedBox(
                      height: size.height * .55,
                      child: Center(
                        child: Image(
                          image: const AssetImage(
                              "assets/images/no_appopintments.png"),
                          height: size.height * .3,
                          width: size.width * .7,
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        itemCount: state.getPreviousInompleted.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UpComingDetailsPage(
                                    appointmentId: state
                                        .getPreviousInompleted[index]
                                        .appointmentId
                                        .toString(),
                                    // testName: state
                                    //     .getPreviousInompleted[index].labtest
                                    //     .toString(),
                                    testName:const [],
                                    patientName: state
                                        .getPreviousInompleted[index].firstname
                                        .toString(),
                                    patientImage: state
                                        .getPreviousInompleted[index].userImage
                                        .toString(),
                                    patientMobileNo: state
                                        .getPreviousInompleted[index].mobileNo
                                        .toString(),
                                    patientAge: state
                                        .getPreviousInompleted[index].age
                                        .toString(),
                                    doctorName: state
                                        .getPreviousInompleted[index].doctorName
                                        .toString(),
                                    clinicName: state
                                        .getPreviousInompleted[index].clinicName
                                        .toString(),
                                    labId: state
                                        .getPreviousInompleted[index].labId
                                        .toString(),
                                    doctorId: state
                                        .getPreviousInompleted[index].doctorId
                                        .toString(),
                                    clinicId: state
                                        .getPreviousInompleted[index].clinicId
                                        .toString(),
                                    patientId: state
                                        .getPreviousInompleted[index].patientId
                                        .toString(),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                UpComingCardWidget(
                                  mobileNumber: state
                                      .getPreviousInompleted[index].mobileNo
                                      .toString(),
                                  patientAge: state
                                      .getPreviousInompleted[index].age
                                      .toString(),
                                  patientImage: state
                                      .getPreviousInompleted[index].userImage
                                      .toString(),
                                  patientName: state
                                      .getPreviousInompleted[index].firstname
                                      .toString(),
                                  // testNames: state
                                  //     .getPreviousInompleted[index].labtest
                                  //     .toString(),
                                  testNames:const [],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
