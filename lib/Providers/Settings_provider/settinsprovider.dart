import 'package:flutter/material.dart';

class Settingsprovider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newmode) {
    currentTheme = newmode;
    notifyListeners();
  }
}
