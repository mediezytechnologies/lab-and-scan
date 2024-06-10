import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/home_page_drawer_widget.dart';
import '../../../application/home/get_completed/get_completed_bloc.dart';
import '../../../application/home/get_up_coming/get_up_coming_bloc.dart';
import '../../../infrastructure/core/token/token.dart';
import 'widgets/completed_widget.dart';
import 'widgets/tab_bar_widget.dart';
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
    BlocProvider.of<GetCompletedBloc>(context)
        .add(const GetCompletedEvent.getCompleted());
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
          TabBarWidget(size: size, tabController: tabController),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                UpComingWidget(),
                CompletedWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
