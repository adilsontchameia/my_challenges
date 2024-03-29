import 'package:ecommerce_ui/src/presentation/pages/bottom_navigation/bottom_nav_page.dart';
import 'package:ecommerce_ui/src/presentation/pages/head_phones_details/head_phones.dart';
import 'package:ecommerce_ui/src/presentation/pages/home_page/home_page.dart';
import 'package:ecommerce_ui/src/presentation/pages/onboard_page/onboard_page.dart';
import 'package:ecommerce_ui/src/presentation/pages/product_details/product_details.dart';
import 'package:ecommerce_ui/src/presentation/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboardPage:
        return MaterialPageRoute(builder: (_) => const OnboardPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case bottomNav:
        return MaterialPageRoute(builder: (_) => const BottonNavPage());
      case headphonesPage:
        return MaterialPageRoute(builder: (_) => const HeadPhonesPage());
      case productDetailsPage:
        return MaterialPageRoute(builder: (_) => const ProductDetailsPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  //Route Error: Takes the error message from consts.
                  //settings.name: Takes the route name meant.
                  body: Center(child: Text('$routeError ${settings.name}')),
                ));
    }
  }
}
