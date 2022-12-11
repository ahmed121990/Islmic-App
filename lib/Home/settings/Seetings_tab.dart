import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Home/settings/LangButtonSheet.dart';
import 'package:untitled5/Home/settings/ThemeButtonSheet.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<Settingsprovider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeButtonSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).accentColor, width: 1)),
              child: Text(
                settingsProvider.isDarkmode()
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLangBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).accentColor, width: 1)),
              child: Text(
                settingsProvider.currentLang == 'en' ? 'English' : 'العربيه',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeButtonSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeButtonSheet();
        });
  }

  void showLangBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottonsheet();
        });
  }
}
