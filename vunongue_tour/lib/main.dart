import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/presentation/admin/create_place/create_place.dart';
import 'package:vunongue_tour/presentation/user/base/base_screen.dart';
import 'package:vunongue_tour/presentation/user/home/home_screen.dart';
import 'package:vunongue_tour/theme/theme.dart';

import 'providers/theme_provider.dart';

void main() {
  //Binding Flutter Widgets
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  //It will never be on landscape mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeModel(),
          lazy: false,
        ),
      ],
      child: Consumer<ThemeModel>(
        builder: (_, themeModel, __) {
          //darkTheme: darkModeTheme,
          //themeMode: ThemeMode.system,
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeModel.isDark ? darkModeTheme : lightModeTheme,
            home: const HomeScreen(),
            initialRoute: '/base',
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/add_event_screen':
                  return MaterialPageRoute(
                      builder: (_) => const CreatePlaceScreen());

                case '/base':
                default:
                  return MaterialPageRoute(builder: (_) => BaseScreen());
              }
            },
          );
        },
      ),
    );
  }
}
