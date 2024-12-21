import 'package:flutter/material.dart';
import 'package:islami_app/MyTheme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

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
              color: provider.isDarkMode()
                  ? MyTheme.yellowColor
                  : Theme.of(context).primaryColor,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
                size: 70,
                Icons.play_arrow_rounded,
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : Theme.of(context).primaryColor),
            SizedBox(
              width: 20,
            ),
            Icon(
                size: 50,
                Icons.skip_next,
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : Theme.of(context).primaryColor)
          ],
        )
      ],
    );
  }
}
