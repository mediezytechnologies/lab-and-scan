import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';

ThemeData appThemeStyle(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    textTheme: GoogleFonts.robotoTextTheme(
      Theme.of(context).textTheme,
    ),

    //* appbar
    appBarTheme: AppBarTheme(
      backgroundColor: kMainColor,
      iconTheme: IconThemeData(color: kCardColor),
      elevation: 0,
    ),
  );
}
