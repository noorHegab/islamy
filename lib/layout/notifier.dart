import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode applight = ThemeMode.light;
  bool _isDarkMode = false;

  ThemeNotifier() {
    _loadTheme();
  }

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _updateSystemUI();
    _saveTheme();
    notifyListeners();
  }

  void changeTheme(ThemeMode themeMode) {
    applight = themeMode;
    _isDarkMode = (themeMode == ThemeMode.dark);
    _updateSystemUI();
    _saveTheme();
    notifyListeners();
  }

  void _updateSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
          _isDarkMode ? const Color(0xff141A2E) : const Color(0xffB7935F),
      statusBarIconBrightness: _isDarkMode ? Brightness.light : Brightness.dark,
    ));
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    applight = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', _isDarkMode);
  }

  Locale _locale = const Locale('ar', '');
  Locale get locale => _locale;
  void changeLanguage(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }
}
