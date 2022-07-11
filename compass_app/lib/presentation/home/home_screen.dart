import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//first: let's set the compass for the app
double? _heading = 0;
LocationData? _currentPosition;
Location location = Location();

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    FlutterCompass.events!.listen((event) {
      setState(() {
        _heading = event.heading;
      });
    });
    fetchLocation();
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
                Column(
                  children: [
                    if (_currentPosition != null)
                      Text(
                        "Latitude: ${_currentPosition!.latitude}",
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    if (_currentPosition != null)
                      Text(
                        "Longitude: ${_currentPosition!.longitude}",
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  fetchLocation() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _currentPosition = await location.getLocation();
    location.onLocationChanged.listen((LocationData currentLocation) {});
  }
}
