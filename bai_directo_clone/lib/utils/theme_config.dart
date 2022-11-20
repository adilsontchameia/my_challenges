import 'package:flutter/material.dart';

//Const for Colors
class BaiColors {
  //Transactions Colors
  static const naHoraColor = Color.fromRGBO(106, 87, 219, 1);
  static const paymentColor = Color.fromRGBO(245, 119, 36, 1);
  static const depositColor = Color.fromRGBO(175, 141, 71, 1);
  static const serviceColor = Color.fromRGBO(207, 89, 205, 1);
  //View Colors

  static const scaffoldColor = Color.fromARGB(255, 244, 248, 252);
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
      bodyColor: BaiColors.defaultBlueColor,
      displayColor: BaiColors.defaultBlueColor,
    ));
