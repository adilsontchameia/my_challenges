import 'package:compass_app/presentation/home/home_screen.dart';
import 'package:compass_app/presentation/home/sliding_up_panel.dart';
import 'package:compass_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      theme: lightTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/home':
            return MaterialPageRoute(builder: (_) => SlidingUpPanelExample());
        }

        return MaterialPageRoute(builder: (_) => const HomeScreen());
      },
    );
  }
}
