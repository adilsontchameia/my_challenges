import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  // ignore: constant_identifier_names
  static const PREF_KEY = "pref_key";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY) ?? false;
  }
}
