import 'package:flutter/material.dart';
import 'package:untitled5/Home/Hadeth/Hadith%20File.dart';
import 'package:untitled5/Home/Hadeth/Hadith_details.dart';

class HadithWidget extends StatelessWidget {
  hadithtab hadith;

  HadithWidget(this.hadith);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetails.routeName,
            arguments: hadith);
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadith.title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
