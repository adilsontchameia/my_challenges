import 'package:flutter/material.dart';

const String enterRoute = '/';
const String homePage = 'home_page';
const String signUpPage = '/sign_up_page';
const String transactionInfo = '/transaction_info_page';

Size screenSize(BuildContext? context) {
  final size = MediaQuery.of(context!).size;
  return size;
}
