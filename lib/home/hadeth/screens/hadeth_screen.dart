import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/widgets/item_hadeth_name.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadAhadeth();
    }
    return Column(
      children: [
        Center(
          child: Image.asset('assets/images/qur2an_screen_logo.png'),
        ),
        Divider(
          color: Theme.of(context).primaryColorLight,
          thickness: 3,
        ),
        Text(
          "Hadeth Name",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColorLight,
          thickness: 3,
        ),
        ahadethList.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.grey,
                ),
              )
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColorLight,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(
                        hadeth: Hadeth(
                            content: ahadethList[index].content,
                            title: ahadethList[index].title));
                  },
                  itemCount: ahadethList.length,
                ),
              )
      ],
    );
  }

  void loadAhadeth() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth = content.split('#\r\n');
    for (int i = 0; i < ahadeth.length; i++) {
      List<String> hadethLines = ahadeth[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(content: hadethLines, title: title);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.content, required this.title});
}
