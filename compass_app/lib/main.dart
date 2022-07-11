import 'package:compass_app/presentation/home/sliding_up_panel.dart';
import 'package:compass_app/presentation/theme/theme.dart';
import 'package:compass_app/provider/theme_provider.dart';
import 'package:compass_app/services/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage?.configurePrefs();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[200],
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.black,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  void initState() {
    super.initState();
    //It will never be on landscape mode
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = LocalStorage.prefs.getInt("darkTheme");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(darkMode ?? 1),
        ),
      ],
      child: Builder(builder: (context) {
        var appTheme = context.watch<ThemeChanger>().currentTheme;
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          home: const HomePage(),
          theme: lightTheme,
          darkTheme: darkModeTheme,
          themeMode: ThemeMode.system,
          // initialRoute: '/home',
          /*
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/home':
                return MaterialPageRoute(
                    builder: (_) => const SlidingUpPanel());
            }
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          },
          */
        );
      }),
    );
  }
}
