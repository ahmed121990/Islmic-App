import 'package:flutter/material.dart';
import 'package:untitled5/Home/Hadeth/hadeth.dart';
import 'package:untitled5/Home/Quran/quran.dart';
import 'package:untitled5/Home/Radio/radio.dart';
import 'package:untitled5/Home/Sebaha/sebha.dart';
import 'package:untitled5/Theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Islami')),
        bottomNavigationBar: Theme(
          data: MyTheme.DarkTheme.copyWith(canvasColor: MyTheme.Darkprimary),
          child: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'Quran',
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                    size: 48,
                  )),
              BottomNavigationBarItem(
                  label: 'Sebha',
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),
                      size: 48)),
              BottomNavigationBarItem(
                  label: 'Radio',
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),
                      size: 48)),
              BottomNavigationBarItem(
                  label: 'Hadeth',
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),
                      size: 48)),
            ],
          ),
        ),
        body: tabs[selectedindex],
      ),
    );
  }

  List<Widget> tabs = [Quran(), Sebha(), RadioTab(), Hadeth()];
}
