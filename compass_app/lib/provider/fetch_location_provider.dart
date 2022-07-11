import 'package:flutter/material.dart';
import 'package:location/location.dart';

class FetchLocationProvider extends ChangeNotifier {
  Location location = Location();
  LocationData? currentPosition;

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
    currentPosition = await location.getLocation();
    location.onLocationChanged.listen((LocationData currentLocation) {});
    notifyListeners();
  }
}
