import 'package:compass_app/presentation/theme/theme.dart';
import 'package:compass_app/services/local_storage.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeChanger(int theme) {
    switch (theme) {
      case 1: //light
        _darkTheme = false;
        _currentTheme = lightTheme;
        break;
      case 2: //dark
        _darkTheme = true;
        _currentTheme = darkModeTheme;
        break;
      default:
        _darkTheme = false;
        _currentTheme = lightTheme;
    }
  }

  bool _darkTheme = false;

  ThemeData? _currentTheme;
  ThemeData? get currentTheme => _currentTheme;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;

    if (value) {
      _currentTheme = darkModeTheme;
      LocalStorage.prefs.setInt('darkTheme', 2);
    } else {
      _currentTheme = lightTheme;
      LocalStorage.prefs.setInt('darkTheme', 1);
    }

    notifyListeners();
  }
}
