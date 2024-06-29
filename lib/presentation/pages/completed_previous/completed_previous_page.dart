import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../application/home/get_previous_completed/get_previous_completed_bloc.dart';
import '../../common_widgets/calender_widget.dart';
import '../../core/app_colors.dart';
import '../../core/text_style.dart';
import '../completed_details/completed_details_page.dart';
import '../../common_widgets/completed_card_widget.dart';

class CompletedPreviousPage extends StatefulWidget {
  const CompletedPreviousPage({super.key});

  @override
  State<CompletedPreviousPage> createState() => _CompletedPreviousPageState();
}

class _CompletedPreviousPageState extends State<CompletedPreviousPage> {
  @override
  void initState() {
    BlocProvider.of<GetPreviousCompletedBloc>(context).add(
      GetPreviousCompletedEvent.getPrevious(formatDate()),
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
        title:  Text("Completed appointments", style: white16B500),
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
                BlocProvider.of<GetPreviousCompletedBloc>(context).add(
                  GetPreviousCompletedEvent.getPrevious(formattedDate),
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
          BlocBuilder<GetPreviousCompletedBloc, GetPreviousCompletedState>(
            builder: (context, state) {
              if (state.isLoading) {
                log("loading...........");
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
                log("errorrooroororo xbshsdghfghdsf hgbbhcbvbvvbvcbv");
                return Center(
                  child: Text(state.message),
                );
              }
              return state.getPreviousCompleted.isEmpty || state.getPreviousCompleted==[]
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
                        shrinkWrap: true,
                        itemCount: state.getPreviousCompleted.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CompletedDetailsPage(
                                    tests: state
                                        .getPreviousCompleted[index].documents!
                                        .toList(),
                                    patientAge: state
                                        .getPreviousCompleted[index].age
                                        .toString(),
                                    patientImage: state
                                        .getPreviousCompleted[index].userImage
                                        .toString(),
                                    patientMobileNo: state
                                        .getPreviousCompleted[index].mobileNo
                                        .toString(),
                                    patientName: state
                                        .getPreviousCompleted[index].firstname
                                        .toString(),
                                    clinicName: state
                                        .getPreviousCompleted[index].clinicName
                                        .toString(),
                                    doctorName: state
                                        .getPreviousCompleted[index].doctorName
                                        .toString(),
                                  ),
                                ),
                              );
                            },
                            child: CompletedCardWidget(
                              tests: state
                                  .getPreviousCompleted[index].documents!
                                  .toList(),
                              mobileNumber: state
                                  .getPreviousCompleted[index].mobileNo
                                  .toString(),
                              patientAge: state.getPreviousCompleted[index].age
                                  .toString(),
                              patientImage: state
                                  .getPreviousCompleted[index].userImage
                                  .toString(),
                              patientName: state
                                  .getPreviousCompleted[index].firstname
                                  .toString(),
                              doctorName: state
                                  .getPreviousCompleted[index].doctorName
                                  .toString(),
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
