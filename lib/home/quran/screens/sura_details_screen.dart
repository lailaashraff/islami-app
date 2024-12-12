import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/quran/widgets/item_sura_details.dart';
import 'package:islami_app/home/quran/widgets/item_sura_name.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                "${args.name}",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: verses.length == 0
                ? CircularProgressIndicator(
                    color: Colors.grey,
                  )
                : Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03,
                        vertical: MediaQuery.of(context).size.height * 0.06),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffF8F8F8),
                    ),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Theme.of(context).primaryColorLight,
                          thickness: 2,
                        );
                      },
                      itemBuilder: (context, index) {
                        return ItemSuraDetails(
                            suraDetails: verses[index], index: index);
                      },
                      itemCount: verses.length,
                    ),
                  )),
      ],
    );
  }

  loadFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}
