import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/screens/hadeth_screen.dart';
import 'package:islami_app/home/hadeth/widgets/item_hadeth_details.dart';
import 'package:provider/provider.dart';

import '../../../MyTheme.dart';
import '../../../providers/app_config_provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset(
                'assets/images/dark_bg.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
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
                color: provider.isDarkMode()
                    ? MyTheme.primaryDark
                    : MyTheme.whiteColor,
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
