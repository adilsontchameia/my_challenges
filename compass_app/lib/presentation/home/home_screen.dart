import 'dart:math';

import 'package:compass_app/provider/fetch_location_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//First: let's set the compass for the app
double? _heading = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    FlutterCompass.events!.listen((event) {
      setState(() {
        _heading = event.heading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  '${_heading!.ceil()} °',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12.0),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: (_heading ?? 0) * (pi / 180) * -1,
                      child: Image.asset('assets/cadrant.png', scale: 1.1),
                    ),
                    Transform.rotate(
                      angle: (_heading ?? 0) * (pi / 180) * -1,
                      child: Image.asset('assets/compass.png', scale: 1.1),
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Consumer<FetchLocationProvider>(
                    builder: (_, fetchLocation, __) {
                  return Column(
                    children: [
                      if (fetchLocation.fetchLocation() != null)
                        Text(
                          "Latitude: ${fetchLocation.currentPosition!.latitude}",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      if (fetchLocation.fetchLocation() != null)
                        Text(
                          "Longitude: ${fetchLocation.currentPosition!.longitude}",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                    ],
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
