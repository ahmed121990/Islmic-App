import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Providers/Settings_provider/settinsprovider.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 0.0;

  int counter = 0;

  int currentindex = 0;
  List<String> azkar = ['سبحان الله ', 'الحمد لله ', 'الله اكبر '];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<Settingsprovider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: mediaQuery.height * .36,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    settingsProvider.isDarkmode()
                        ? 'assets/images/head_sebha_dark@3x.png'
                        : 'assets/images/head_sebha_logo@3x.png',
                    height: mediaQuery.height * .1,
                  ),
                  left: mediaQuery.width * .46,
                ),
                Positioned(
                  top: 55,
                  left: mediaQuery.width * .2,
                  child: GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        settingsProvider.isDarkmode()
                            ? 'assets/images/body_sebha_dark@3x.png'
                            : 'assets/images/body_sebha_logo@3x.png',
                        height: mediaQuery.height * .28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'عدد التسبيحات ',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 70,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              counter.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 140,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(azkar[currentindex],
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          )
        ],
      ),
    );
  }

  onClick() {
    setState(() {
      angle--;
      counter++;
      if (counter == 10) {
        currentindex++;
        counter = 0;
      }
      if (currentindex > azkar.length - 1) {
        currentindex = 0;
      }
    });
  }
}
