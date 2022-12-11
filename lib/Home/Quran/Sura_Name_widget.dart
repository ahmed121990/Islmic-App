import 'package:flutter/material.dart';
import 'package:untitled5/Home/Quran/Sura_Details.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;
  String times;

  SuraNameWidget(this.title, this.times, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routename,
            arguments: SuraDetailsArgs(index: index, name: title));
      },
      child: Table(
          border: TableBorder.symmetric(
              inside:
                  BorderSide(width: 2, color: Theme.of(context).accentColor)),
          children: [
            TableRow(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  child: Center(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    times,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
