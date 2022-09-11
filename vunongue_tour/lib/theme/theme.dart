import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Const for Colors
class VunongueColors {
  static const blue = Color.fromRGBO(36, 49, 77, 1);
  static const buttonColor = Color.fromRGBO(147, 196, 222, 1);
  static const darkColor = Color.fromRGBO(23, 26, 53, 1);
  static const darkColor2 = Color.fromARGB(255, 0, 32, 51);
  static const grey = Color.fromARGB(255, 126, 126, 126);
  static const lightGrey = Color.fromARGB(255, 176, 186, 185);
  static const veryLightGrey = Color.fromARGB(255, 215, 236, 235);
  static const white = Color.fromARGB(255, 255, 255, 255);
  static const pink = Color.fromARGB(255, 255, 0, 179);
}

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
    scaffoldBackgroundColor: VunongueColors.darkColor,
    drawerTheme: const DrawerThemeData(
      backgroundColor: VunongueColors.blue,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: VunongueColors.blue,
      iconTheme: const IconThemeData(color: Colors.white),
      // centerTitle: true,
      //  toolbarTextStyle: GoogleFonts.poppins().copyWith(),
      titleTextStyle: GoogleFonts.poppins().copyWith(
        fontSize: 20.0,
        // color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomAppBarColor: VunongueColors.darkColor,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: _borderLight,
      contentPadding: EdgeInsets.zero,
      enabledBorder: _borderLight,
      focusedBorder: _borderLight,
      labelStyle: const TextStyle(
        color: VunongueColors.buttonColor,
      ),
      hintStyle: GoogleFonts.poppins(
        color: VunongueColors.lightGrey,
        fontSize: 10.0,
      ),
    ),
    iconTheme: const IconThemeData(color: VunongueColors.buttonColor),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: VunongueColors.buttonColor)
        .copyWith(secondary: VunongueColors.buttonColor));
