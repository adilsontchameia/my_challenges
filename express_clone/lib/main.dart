import 'package:express_clone/src/screens/activities/activities.dart';
import 'package:express_clone/utils/consts.dart';
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
      home: HistoryScreen(),
      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return splashColor; // the color when checkbox is selected;
              }
              return splashColor; //the color when checkbox is unselected;
            },
          ),
        ),
      ),
      //home: SplashScreen(),
    );
  }
}
