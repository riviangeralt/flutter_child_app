import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // Method to save data to SharedPreferences
  static Future<void> saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Method to retrieve data from SharedPreferences
  static Future<String?> getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Method to remove data from SharedPreferences
  static Future<void> removeData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
