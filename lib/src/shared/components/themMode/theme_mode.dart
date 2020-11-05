import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_flutter/src/shared/components/themMode/dark_theme.dart';
import 'package:model_flutter/src/shared/components/themMode/ligth_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomThemeMode with ChangeNotifier {
  bool _isDark = false;
  CustomThemeMode() {
    SharedPreferences.getInstance().then((value) {
      _isDark = value.getBool('themeMode') ?? false;
      notifyListeners();
    });
  }

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark = !_isDark;
    SharedPreferences.getInstance().then((value) {
      value.setBool('themeMode', _isDark);
    });
    notifyListeners();
  }

  ThemeData ligthTheme() {
    return LigthTheme.getLigthTheme();
  }

  ThemeData darkTheme() {
    return DarkTheme.getDarkTheme();
  }
}
