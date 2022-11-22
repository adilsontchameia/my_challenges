import 'package:bai_directo_clone/utils/constants.dart';
import 'package:flutter/material.dart';

import '../src/pages/enter_page/enter_page.dart';
import '../src/pages/home_page/home_page.dart';
import '../src/pages/sign_up_page/sign_up_page.dart';
import '../src/pages/transaction_info_page/transaction_info_page.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case enterRoute:
        return MaterialPageRoute(builder: (_) => const EnterPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case transactionInfo:
        return MaterialPageRoute(builder: (_) => const TransactionInfoPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text(
                          ' Sorry :-( ! No route defined for ${settings.name}')),
                ));
    }
  }
}
