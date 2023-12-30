abstract class ISharedPreferences {
  Future<bool> setBool(String key, bool value);
  Future<bool?> getBool(String key);
}
