import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/application/home/get_completed/get_completed_bloc.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/completed_card_widget.dart';
import '../../../core/app_colors.dart';
import '../../completed_details/completed_details_page.dart';
import 'rich_text_widget.dart';

class CompletedWidget extends StatefulWidget {
  const CompletedWidget({super.key});

  @override
  State<CompletedWidget> createState() => _CompletedWidgetState();
}

class _CompletedWidgetState extends State<CompletedWidget> {
  Future<void> _refreshData() async {
    BlocProvider.of<GetCompletedBloc>(context)
        .add(const GetCompletedEvent.getCompleted());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return RefreshIndicator(
      color: kMainColor,
      onRefresh: _refreshData,
      child: BlocBuilder<GetCompletedBloc, GetCompletedState>(
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
          return state.getCompleted.isEmpty
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
                        title: "Completed",
                        pendingCount: state.getCompleted.length,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        shrinkWrap: true,
                        itemCount: state.getCompleted.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CompletedDetailsPage(
                                    patientAge: state.getCompleted[index].age
                                        .toString(),
                                    patientImage: state
                                        .getCompleted[index].userImage
                                        .toString(),
                                    patientMobileNo: state
                                        .getCompleted[index].mobileNo
                                        .toString(),
                                    patientName: state
                                        .getCompleted[index].firstname
                                        .toString(),
                                    clinicName: state
                                        .getCompleted[index].clinicName
                                        .toString(),
                                    doctorName: state
                                        .getCompleted[index].doctorName
                                        .toString(),
                                    note: state.getCompleted[index].notes
                                        .toString(),
                                    uploadedDocument: state
                                        .getCompleted[index].documentUpload
                                        .toString(),
                                    testName: state.getCompleted[index].labtest
                                        .toString(),
                                  ),
                                ),
                              );
                            },
                            child: CompletedCardWidget(
                              mobileNumber:
                                  state.getCompleted[index].mobileNo.toString(),
                              patientAge:
                                  state.getCompleted[index].age.toString(),
                              patientImage: state.getCompleted[index].userImage
                                  .toString(),
                              patientName: state.getCompleted[index].firstname
                                  .toString(),
                              testName:
                                  state.getCompleted[index].labtest.toString(),
                              doctorName: state.getCompleted[index].doctorName
                                  .toString(),
                              note: state.getCompleted[index].notes.toString(),
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
