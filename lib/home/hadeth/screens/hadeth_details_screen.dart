import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/screens/hadeth_screen.dart';
import 'package:islami_app/home/hadeth/widgets/item_hadeth_details.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
                args.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                  vertical: MediaQuery.of(context).size.height * 0.06),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffF8F8F8),
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemHadethDetails(content: args.content[index]);
                },
                itemCount: args.content.length,
              ),
            )),
      ],
    );
  }
}
