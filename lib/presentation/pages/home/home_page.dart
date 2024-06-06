import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/home_page_drawer_widget.dart';
import '../../../application/home/get_up_coming/model/get_up_coming_bloc.dart';
import '../../../infrastructure/core/token/token.dart';
import '../../core/app_colors.dart';
import '../../core/text_style.dart';
import 'widgets/up_coming_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  String? userName = GetLocalStorage.getUserIdAndToken('firstname');

  @override
  void initState() {
    BlocProvider.of<GetUserDetailsBloc>(context)
        .add(const GetUserDetailsEvent.fetchUserDetails());
    tabController = TabController(length: 2, vsync: this);
    BlocProvider.of<GetUpComingBloc>(context)
        .add(const GetUpComingEvent.getUpComing());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          userName.toString(),
        ),
        centerTitle: true,
      ),
      drawer: const HomePageDrawerWidget(),
      body: Column(
        children: [
          Container(
            height: 50.h,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          Container(
            height: size.height * .08,
            color: kScaffoldColor,
            child: TabBar(
              controller: tabController,
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.only(
                  top: 10.h, left: 10.w, right: 10.w, bottom: 10.h),
              unselectedLabelColor: kTextColor,
              unselectedLabelStyle: black12B500,
              labelStyle: white13B500,
              indicatorSize: TabBarIndicatorSize.tab,
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
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                const UpComingWidget(),
                ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: const Text("frghdf"),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
