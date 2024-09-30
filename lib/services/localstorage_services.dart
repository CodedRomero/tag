import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageServices {
  static String userLoggedIn = 'userLoggedIn';

  Future setBooleanValue(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  Future<bool?> getBooleanValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  Future clearKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> clearLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }
}
