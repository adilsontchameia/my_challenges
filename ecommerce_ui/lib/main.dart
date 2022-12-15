import 'package:ecommerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

import 'src/utils/page_routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldColor,
          
          appBarTheme: const AppBarTheme(
            backgroundColor: scaffoldColor,
          )),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: PageRouter.generateRoute,
      initialRoute: splashPage,
    );
  }
}
