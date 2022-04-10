import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/pages/course_details.dart';
import 'package:ucc_info_app/src/pages/galery_details.dart';
import 'src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UCC APP',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}
