import 'package:ecommerce_ui/src/pages/head_phones/head_phones.dart';
import 'package:ecommerce_ui/src/pages/product_details/product_details.dart';
import 'package:ecommerce_ui/src/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case headphonesTab:
        return MaterialPageRoute(builder: (_) => const HeadPhonesPage());
      case productDetails:
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
