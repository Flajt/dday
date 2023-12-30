import 'package:dday/features/intro/interfaces/ISharedPreferencesWrapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesWrapper implements ISharedPreferences {
  @override
  Future<bool?> getBool(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }
}
