import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              size: 50,
              Icons.skip_previous,
              color: Theme.of(context).primaryColorLight,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
                size: 70,
                Icons.play_arrow_rounded,
                color: Theme.of(context).primaryColorLight),
            SizedBox(
              width: 20,
            ),
            Icon(
                size: 50,
                Icons.skip_next,
                color: Theme.of(context).primaryColorLight)
          ],
        )
      ],
    );
  }
}
