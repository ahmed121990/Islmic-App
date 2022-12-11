import 'package:flutter/material.dart';

class Settingsprovider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLang = 'en';

  void changLang(String newLocal) {
    currentLang = newLocal;
    notifyListeners();
  }

  void changeTheme(ThemeMode newmode) {
    currentTheme = newmode;
    notifyListeners();
  }

  String getbackgroundimage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/bg3.png'
        : 'assets/images/bg.png';
  }

  bool isDarkmode() {
    return currentTheme == ThemeMode.dark;
  }
}
