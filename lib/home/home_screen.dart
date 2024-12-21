import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/hadeth/screens/hadeth_screen.dart';
import 'package:islami_app/home/quran/screens/quran_screen.dart';
import 'package:islami_app/home/radio/radio_screen.dart';
import 'package:islami_app/home/sebha/sebha_screen.dart';
import 'package:islami_app/home/settings/screens/settings_screen.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
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
              AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.quran,
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_quran.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.hadeth,
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_hadeth.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.sebha,
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_sebha.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.radio,
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_radio.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.settings,
                    icon: Icon(Icons.settings),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
