import 'package:flutter/material.dart';

//Const for Colors
class BaiColors {
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

final customDefaultTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    drawerTheme: const DrawerThemeData(
      backgroundColor: BaiColors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    textTheme: const TextTheme(
      
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(bodyColor: Colors.white, displayColor: Colors.white),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: Color.fromARGB(255, 239, 239, 239),
      iconTheme: IconThemeData(color: BaiColors.darkColor),
      toolbarTextStyle: TextStyle(color: BaiColors.white),
    ),
    iconTheme: const IconThemeData(color: BaiColors.buttonColor),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: BaiColors.white)
        .copyWith(secondary: BaiColors.buttonColor));
