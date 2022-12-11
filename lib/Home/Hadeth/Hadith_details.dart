import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Home/Hadeth/Hadith%20File.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';

class HadithDetails extends StatelessWidget {
  static const String routeName = 'hadith-details';

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<Settingsprovider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as hadithtab;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getbackgroundimage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Card(
              elevation: 12,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      args.content,
                      style: Theme.of(context).textTheme.headline6,
                      textDirection: TextDirection.rtl,
                    ),
                  ))),
        ),
      ),
    );
  }
}
