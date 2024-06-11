import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';

ThemeData appThemeStyle(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    //* appbar
    textTheme: GoogleFonts.robotoTextTheme(
      Theme.of(context).textTheme,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kMainColor,
      iconTheme: IconThemeData(color: kCardColor),
      centerTitle: false,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: kCardColor,
      ),
    ),
  );
}
