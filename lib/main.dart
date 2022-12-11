import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Home/Hadeth/Hadith_details.dart';
import 'package:untitled5/Home/Home%20Screen.dart';
import 'package:untitled5/Home/Quran/Sura_Details.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';
import 'package:untitled5/Theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext) => Settingsprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<Settingsprovider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      locale: Locale(settingsProvider.currentLang),
      routes: {
        HomeScreen.routename: (_) => HomeScreen(),
        SuraDetails.routename: (_) => SuraDetails(),
        HadithDetails.routeName: (_) => HadithDetails()
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: settingsProvider.currentTheme,
    );
  }
}
