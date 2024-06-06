import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/application/login/login_bloc.dart';
import 'package:mediezy_lab_scan/application/register/register_bloc.dart';
import 'package:mediezy_lab_scan/domain/core/dependency_injection/injectable.dart';
import 'package:mediezy_lab_scan/presentation/core/app_theme.dart';
import 'package:mediezy_lab_scan/presentation/pages/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await GetStorage.init();
  runApp(const MediezyLabScan());
}

class MediezyLabScan extends StatelessWidget {
  const MediezyLabScan({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<LoginBloc>()),
        BlocProvider(create: (context) => getIt<RegisterBloc>()),
        BlocProvider(create: (context) => getIt<GetUserDetailsBloc>()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              title: 'Mediezy Lab and Scan',
              theme: appThemeStyle(context),
              debugShowCheckedModeBanner: false,
              home: const SplashPage(),
            );
          }),
    );
  }
}
