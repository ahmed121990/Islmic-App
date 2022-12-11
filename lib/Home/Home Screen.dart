import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Home/Hadeth/hadeth.dart';
import 'package:untitled5/Home/Quran/quran.dart';
import 'package:untitled5/Home/Radio/radio.dart';
import 'package:untitled5/Home/Sebaha/sebha.dart';
import 'package:untitled5/Home/settings/Seetings_tab.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<Settingsprovider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getbackgroundimage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.app_tittle)),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.quran,
                icon: ImageIcon(
                  AssetImage('assets/images/icon_quran.png'),
                  size: 48,
                )),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.mention,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),
                    size: 48)),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.radio,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),
                    size: 48)),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.hadith,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),
                    size: 48)),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                label: AppLocalizations.of(context)!.settings,
                icon: Icon(
                  Icons.settings,
                  size: 40,
                )),
          ],
        ),
        body: tabs[selectedindex],
      ),
    );
  }

  List<Widget> tabs = [Quran(), Sebha(), RadioTab(), Hadeth(), SettingsTab()];
}
