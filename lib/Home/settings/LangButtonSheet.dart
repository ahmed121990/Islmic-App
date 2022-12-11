import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';

class LanguageBottonsheet extends StatefulWidget {
  @override
  State<LanguageBottonsheet> createState() => _LanguageBottonsheet();
}

class _LanguageBottonsheet extends State<LanguageBottonsheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<Settingsprovider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changLang('en');
              },
              child: settingsProvider.currentLang == 'en'
                  ? SelctedItem('English')
                  : unselectedItem('English')),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changLang('ar');
              },
              child: settingsProvider.currentLang == 'ar'
                  ? SelctedItem('العربيه')
                  : unselectedItem('العربيه')),
        ],
      ),
    );
  }

  Widget SelctedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget unselectedItem(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
