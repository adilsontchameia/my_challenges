import 'package:ecommerce_ui/src/presentation/pages/head_phones_details/head_phones.dart';
import 'package:ecommerce_ui/src/presentation/pages/product_details/product_details.dart';
import 'package:ecommerce_ui/src/presentation/pages/bottom_navigation/resume_page.dart';
import 'package:ecommerce_ui/src/presentation/pages/home_page/home_page.dart';
import 'package:ecommerce_ui/src/presentation/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case resumePage:
        return MaterialPageRoute(builder: (_) => const ResumePage());
      case headphonesPage:
        return MaterialPageRoute(builder: (_) => const HeadPhonesPage());
      case productDetailsPage:
        return MaterialPageRoute(builder: (_) => const ProductDetailsPage());
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
