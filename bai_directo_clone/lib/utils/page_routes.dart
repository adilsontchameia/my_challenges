import 'package:bai_directo_clone/pages/enter_page/enter_page.dart';
import 'package:bai_directo_clone/pages/sign_up_page/sign_up_page.dart';
import 'package:bai_directo_clone/pages/transation_info_page/transation_info_page.dart';
import 'package:bai_directo_clone/utils/constants.dart';
import 'package:flutter/material.dart';

import '../pages/home_page/home_page.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case enterRoute:
        return MaterialPageRoute(builder: (_) => const EnterPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case transationInfo:
        return MaterialPageRoute(builder: (_) => const TransationInfoPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
