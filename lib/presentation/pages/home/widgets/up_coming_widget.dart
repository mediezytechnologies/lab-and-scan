import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/up_coming_card_widget.dart';
import '../../../../application/home/get_up_coming/model/get_up_coming_bloc.dart';
import '../../../core/app_colors.dart';
import '../../upcoming_details/upcoming_details_page.dart';

class UpComingWidget extends StatelessWidget {
  const UpComingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUpComingBloc, GetUpComingState>(
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
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          shrinkWrap: true,
          itemCount: state.getUpComing.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpComingDetailsPage(
                      testName: state.getUpComing[index].labtest.toString(),
                      patientName:
                          state.getUpComing[index].firstname.toString(),
                      patientImage:
                          state.getUpComing[index].userImage.toString(),
                      patientMobileNo:
                          state.getUpComing[index].mobileNo.toString(),
                      patientAge: state.getUpComing[index].age.toString(),
                      doctorName:
                          state.getUpComing[index].doctorName.toString(),
                      clinicName:
                          state.getUpComing[index].clinicName.toString(),
                      labId: state.getUpComing[index].labId.toString(),
                      doctorId: state.getUpComing[index].doctorId.toString(),
                      clinicId: state.getUpComing[index].clinicId.toString(),
                      patientId: state.getUpComing[index].patientId.toString(),
                    ),
                  ),
                );
              },
              child: UpComingCardWidget(
                mobileNumber: state.getUpComing[index].mobileNo.toString(),
                patientAge: state.getUpComing[index].age.toString(),
                patientImage: state.getUpComing[index].userImage.toString(),
                patientName: state.getUpComing[index].firstname.toString(),
                testName: state.getUpComing[index].labtest.toString(),
              ),
            );
          },
        );
      },
    );
  }
}
