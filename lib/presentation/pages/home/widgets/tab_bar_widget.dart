import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../core/text_style.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.size,
    required this.tabController,
  });

  final Size size;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .08,
      color: kScaffoldColor,
      child: TabBar(
        controller: tabController,
        physics: const ClampingScrollPhysics(),
        padding:
            EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w, bottom: 10.h),
        unselectedLabelColor: kTextColor,
        unselectedLabelStyle: black12B500,
        labelStyle: white13B500,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 0,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), color: kMainColor),
        tabs: [
          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Upcoming",
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text("Completed"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
