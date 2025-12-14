import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesRepository {
  Future<String?> getLanguage();
  Future<void> setLanguage(String language);
  Future<bool> isDarkMode();
  Future<void> setDarkMode(bool isDark);
  Future<void> clearAllData();
}

class PreferencesRepositoryImpl implements PreferencesRepository {
  final SharedPreferences _preferences;

  static const String _languageKey = 'language';
  static const String _darkModeKey = 'dark_mode';

  PreferencesRepositoryImpl(this._preferences);

  @override
  Future<String?> getLanguage() async {
    return _preferences.getString(_languageKey);
  }

  @override
  Future<void> setLanguage(String language) async {
    await _preferences.setString(_languageKey, language);
  }

  @override
  Future<bool> isDarkMode() async {
    return _preferences.getBool(_darkModeKey) ?? false;
  }

  @override
  Future<void> setDarkMode(bool isDark) async {
    await _preferences.setBool(_darkModeKey, isDark);
  }

  @override
  Future<void> clearAllData() async {
    await _preferences.clear();
  }
}
