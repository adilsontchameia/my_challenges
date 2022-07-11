import 'package:flutter/material.dart' show Color, ThemeData;
import 'package:google_fonts/google_fonts.dart';

class YourCompassColors {
  static const purple = Color.fromARGB(255, 117, 62, 255);
  static const dark = Color.fromARGB(255, 170, 2, 38);
  static const white = Color.fromARGB(255, 240, 235, 247);
  static const grey = Color.fromARGB(255, 27, 18, 40);
  static const background = Color.fromARGB(255, 197, 197, 197);
}

final lightTheme = ThemeData(
    scaffoldBackgroundColor: YourCompassColors.background,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: YourCompassColors.dark,
      displayColor: YourCompassColors.dark,
    ));

final darkTheme = ThemeData(
    scaffoldBackgroundColor: YourCompassColors.grey,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: YourCompassColors.white,
      displayColor: YourCompassColors.white,
    ));
