import 'package:bai_directo_clone/utils/constants.dart';
import 'package:bai_directo_clone/utils/page_routes.dart';
import 'package:bai_directo_clone/utils/theme_config.dart';
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      onGenerateRoute: PageRouter.generateRoute,
      initialRoute: homePage,
      theme: customDefaultTheme,
    );
  }
}
