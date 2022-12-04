import 'package:flutter/material.dart';

class ThemeButtonSheet extends StatefulWidget {
  @override
  State<ThemeButtonSheet> createState() => _ThemeButtonSheetState();
}

class _ThemeButtonSheetState extends State<ThemeButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelctedItem('Light'),
          SizedBox(
            height: 15,
          ),
          unselectedItem('Dark')
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
