import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static const Color priamrycolor = Color(0XFFB7935F);
  static const Color Darkprimary = Color(0XFF0F1424);
  static const Color yellowcolor = Color(0XFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme(
      headline6: TextStyle(fontSize: 22, color: Colors.black),
      headline4: TextStyle(fontSize: 28, color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
        iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false),
    primaryColor: priamrycolor,
  );
  static final ThemeData DarkTheme = ThemeData(
    textTheme: const TextTheme(
      headline6: TextStyle(fontSize: 22, color: Colors.white),
      headline4: TextStyle(fontSize: 28, color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 36, color: yellowcolor),
        unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
        selectedLabelStyle: TextStyle(color: yellowcolor),
        selectedItemColor: yellowcolor),
    primaryColor: Darkprimary,
  );
}
