import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mediezy_lab_scan/domain/core/dependency_injection/injectable.dart';
import 'package:mediezy_lab_scan/presentation/core/app_theme.dart';
import 'package:mediezy_lab_scan/presentation/pages/auth/splash/splash_page.dart';
import 'presentation/core/app_bloc_providers.dart';

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
      providers: AppBlocProviders.allBlocProviders,
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
