import 'package:flutter/material.dart';

const String splashPage = '/';
const String bottomNav = '/bottomNav_page';
const String onboardPage = '/slider_page';
const String homePage = '/home_page';
const String headphonesPage = '/headphones_page';
const String productDetailsPage = '/product_details';

Size screenSize(BuildContext? context) {
  final size = MediaQuery.of(context!).size;
  return size;
}
