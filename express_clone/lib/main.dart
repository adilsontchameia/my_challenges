import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/pages/login_page.dart';

void main() {
  // To Disable the LandsCapeMode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //home: SplashScreen(),
    );
  }
}
