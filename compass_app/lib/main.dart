import 'package:compass_app/presentation/theme/theme.dart';
import 'package:compass_app/presentation/widgets/sliding_panel/sliding_up_panel.dart';
import 'package:compass_app/provider/fetch_location_provider.dart';
import 'package:compass_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeModel(),
        ),
        ChangeNotifierProvider(create: (_) => FetchLocationProvider()),
      ],
      child: Consumer<ThemeModel>(builder: (_, themeModel, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
          theme: themeModel.isDark ? darkModeTheme : lightTheme,
          //darkTheme: darkModeTheme,
          //themeMode: ThemeMode.system,
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
