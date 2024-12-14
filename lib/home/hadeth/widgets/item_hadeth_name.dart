import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/screens/hadeth_details_screen.dart';
import 'package:islami_app/home/hadeth/screens/hadeth_screen.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
              arguments: Hadeth(title: hadeth.title, content: hadeth.content));
        },
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
