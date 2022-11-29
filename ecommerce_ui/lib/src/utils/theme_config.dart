import 'package:flutter/material.dart';

//Const for Colors
class EcommerceColors {
  //Const Colors
  static const blueColor = Color.fromRGBO(106, 87, 219, 1);
  static const redColor = Color.fromRGBO(245, 119, 36, 1);
  //CardColors
  static const scaffoldHomeColor = Color.fromARGB(255, 241, 241, 241);
  static const baiBlueColor = Color.fromRGBO(92, 124, 150, 1);
  static const cardDescriptionColor = Color.fromRGBO(0, 50, 90, 1);
  static const defaultBlueColor = Color.fromRGBO(0, 163, 224, 1);
}

final customDefaultTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white,
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
    ).apply(
      bodyColor: EcommerceColors.defaultBlueColor,
      displayColor: EcommerceColors.defaultBlueColor,
    ));
