import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled5/Home/Hadeth/Hadith%20File.dart';
import 'package:untitled5/Home/Hadeth/Hadith_Name_widget.dart';

class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<hadithtab> allhadithlist = [];

  @override
  Widget build(BuildContext context) {
    if (allhadithlist.isEmpty) readHadithFile();
    return Container(
        child: Column(
      children: [
        Image.asset('assets/images/hadeth_logo@2x.png'),
        Expanded(
          child: ListView.separated(
            itemBuilder: (buildContext, index) {
              return HadithWidget(allhadithlist[index]);
            },
            itemCount: allhadithlist.length,
            separatorBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 1,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
              );
            },
          ),
        ),
      ],
    ));
  }

  void readHadithFile() async {
    List<hadithtab> allhadith = [];
    String content = await rootBundle.loadString('assets/sura/ahadeth .txt');
    List<String> allhadithcontent = content.split('#');
    for (int i = 0; i < allhadithcontent.length; i++) {
      String singlehadith = allhadithcontent[i].trim();
      int indexfirstline0 = singlehadith.indexOf('\n');
      String title = singlehadith.substring(0, indexfirstline0);
      String content = singlehadith.substring(indexfirstline0 + 1);
      hadithtab h = hadithtab(title, content);
      allhadith.add(h);
    }
    allhadithlist = allhadith;
    setState(() {});
  }
}
