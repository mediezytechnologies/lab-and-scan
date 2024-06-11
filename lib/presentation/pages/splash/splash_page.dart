import 'package:flutter/material.dart';
import 'package:mediezy_lab_scan/infrastructure/core/token/token.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/home_page.dart';
import 'package:mediezy_lab_scan/presentation/pages/login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> checkuserlogin() async {
    String? token = GetLocalStorage.getUserIdAndToken("token");
    if (token == null) {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
              (route) => false);
        },
      );
    } else {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false);
        },
      );
    }
  }

  @override
  void initState() {
    checkuserlogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image(
          image: AssetImage("assets/images/splash_image.jpg"),
        ),
      ),
    );
  }
}
