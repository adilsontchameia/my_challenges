import 'package:ecommerce_ui/src/presentation/pages/onboard_page/onboard_page.dart';
import 'package:flutter/material.dart';

import 'src/utils/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: PageRouter.generateRoute,
      //initialRoute: resumePage,
      home: OnboardPage(),
    );
  }
}
