import 'package:express_clone/src/screens/card_managment/card_managment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: CardManagment(),

      //home: SplashScreen(),
    );
  }
}
