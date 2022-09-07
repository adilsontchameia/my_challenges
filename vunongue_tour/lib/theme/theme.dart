import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Const for Colors
class VunongueColors {
  static const blue = Colors.blue;
  static const green = Color.fromARGB(255, 0, 255, 47);
  static const dark = Color.fromARGB(255, 0, 0, 0);
  static const grey = Color.fromARGB(255, 126, 126, 126);
  static const lightGrey = Color.fromARGB(255, 176, 186, 185);
  static const veryLightGrey = Color.fromARGB(255, 215, 236, 235);
  static const white = Color.fromARGB(255, 255, 255, 255);
  static const pink = Color.fromARGB(255, 255, 0, 179);
}

/*
//Color for gradient
final deliverGradient = [
  VunongueColors.green,
  VunongueColors.purple,
];
*/
//Border Modes
final _borderLight = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: VunongueColors.lightGrey,
    width: 2,
    style: BorderStyle.solid,
  ),
);

final _borderDark = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: VunongueColors.grey,
    width: 2,
    style: BorderStyle.solid,
  ),
);
//Theme Modes
final lightModeTheme = ThemeData(
  canvasColor: VunongueColors.white,
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    color: Colors.grey.shade50,
    iconTheme: IconThemeData(color: Colors.blue.shade400),
    // centerTitle: true,
    //  toolbarTextStyle: GoogleFonts.poppins().copyWith(),
    titleTextStyle: GoogleFonts.poppins().copyWith(
      fontSize: 20.0,
      color: VunongueColors.blue,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomAppBarColor: VunongueColors.veryLightGrey,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: VunongueColors.blue,
    displayColor: VunongueColors.blue,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: _borderLight,
    contentPadding: EdgeInsets.zero,
    enabledBorder: _borderLight,
    focusedBorder: _borderLight,
    labelStyle: const TextStyle(
      color: VunongueColors.blue,
    ),
    hintStyle: GoogleFonts.poppins(
      color: VunongueColors.lightGrey,
      fontSize: 10.0,
    ),
  ),
  iconTheme: const IconThemeData(color: VunongueColors.blue),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: VunongueColors.blue)
      .copyWith(secondary: VunongueColors.blue),
);

final darkModeTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: VunongueColors.blue,
    //  toolbarTextStyle: GoogleFonts.poppins().copyWith(),
    titleTextStyle: GoogleFonts.poppins().copyWith(
      fontSize: 20.0,
      color: VunongueColors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  canvasColor: VunongueColors.grey,
  bottomAppBarColor: Colors.transparent,
  scaffoldBackgroundColor: VunongueColors.dark,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: VunongueColors.green,
    displayColor: VunongueColors.green,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: _borderLight,
    contentPadding: EdgeInsets.zero,
    enabledBorder: _borderDark,
    focusedBorder: _borderDark,
    labelStyle: const TextStyle(
      color: VunongueColors.white,
    ),
    fillColor: VunongueColors.grey,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: VunongueColors.white,
      fontSize: 10.0,
    ),
  ),
  iconTheme: const IconThemeData(
    color: VunongueColors.white,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: VunongueColors.white,
  ),
);
