import 'package:flutter/material.dart';
import 'package:untitled5/Home/Hadeth/Hadith_details.dart';
import 'package:untitled5/Home/Home%20Screen.dart';
import 'package:untitled5/Home/Quran/Sura_Details.dart';
import 'package:untitled5/Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (_) => HomeScreen(),
        SuraDetails.routename: (_) => SuraDetails(),
        HadithDetails.routeName: (_) => HadithDetails()
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
