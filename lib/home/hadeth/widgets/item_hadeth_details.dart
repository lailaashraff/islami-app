import 'package:flutter/material.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        content,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
