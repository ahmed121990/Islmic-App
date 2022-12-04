import 'package:flutter/material.dart';
import 'package:untitled5/Home/settings/ThemeButtonSheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Tehme',
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
                'light',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border:
                    Border.all(color: Theme.of(context).accentColor, width: 1)),
            child: Text(
              'English',
              style: Theme.of(context).textTheme.headline6,
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
}