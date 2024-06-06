import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/home_page_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<GetUserDetailsBloc>(context)
        .add(const GetUserDetailsEvent.fetchUserDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shijo Lab center"),
        centerTitle: true,
      ),
      drawer: const HomePageDrawerWidget(),
    );
  }
}
