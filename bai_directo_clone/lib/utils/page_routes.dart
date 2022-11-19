import 'package:bai_directo_clone/pages/enter_page/enter_page.dart';
import 'package:bai_directo_clone/pages/sign_up_page/sign_up.dart';
import 'package:bai_directo_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const EnterPage());
      case signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
