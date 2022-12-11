import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';

class ThemeButtonSheet extends StatefulWidget {
  @override
  State<ThemeButtonSheet> createState() => _ThemeButtonSheetState();
}

class _ThemeButtonSheetState extends State<ThemeButtonSheet> {
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
                settingsProvider.changeTheme(ThemeMode.light);
              },
              child: settingsProvider.isDarkmode()
                  ? unselectedItem(AppLocalizations.of(context)!.light)
                  : SelctedItem(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.isDarkmode()
                  ? SelctedItem(AppLocalizations.of(context)!.dark)
                  : unselectedItem(AppLocalizations.of(context)!.dark))
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
