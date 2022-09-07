import 'package:flutter/material.dart';
import 'package:vunongue_tour/presentation/places_details/place_details.dart';
import 'package:vunongue_tour/theme/theme.dart';

void main() {
  //Binding Flutter Widgets
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightModeTheme,
      home: const PlacesDetailsScreen(),
    );
  }
}
