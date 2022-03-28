import 'package:flutter/material.dart';
import 'package:ucc_info_app/src/pages/course_details.dart';
import 'package:ucc_info_app/src/pages/galery_details.dart';
import 'package:ucc_info_app/src/pages/settings_page.dart';
import 'src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => const HomePage(),
        CoursesDetails.routeName: (BuildContext context) =>
            const CoursesDetails(),
        '/setting': (context) => const SettingsPage(),
      },
    );
  }
}
