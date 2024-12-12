import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String suraDetails;
  int index;

  ItemSuraDetails({required this.suraDetails, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "$suraDetails {${index + 1}}",
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
