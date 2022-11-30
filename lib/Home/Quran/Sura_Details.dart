import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends StatefulWidget {
  static const String routename = 'suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> varses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArgs;
    // print(args.index);
    // print(args.name);
    readFile(args.index);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Container(
          child: varses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (_, index) {
                    return Text(varses[index]);
                  },
                  itemCount: varses.length,
                ),
        ),
      ),
    );
  }

  void readFile(int index) async {
    String content =
        await rootBundle.loadString('assets/sura/${index + 1}.txt');
    var lines = content.split('\n');

    setState(() {
      varses = lines;
    });
  }
}

class SuraDetailsArgs {
  String name;

  int index;

  SuraDetailsArgs({required this.index, required this.name});
}
