import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/screens/hadeth_screen.dart';
import 'package:islami_app/home/quran/screens/quran_screen.dart';
import 'package:islami_app/home/radio/radio_screen.dart';
import 'package:islami_app/home/sebha/sebha_screen.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
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
              "Islami",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColorLight),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                    label: 'Quran',
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_quran.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Hadeth',
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_hadeth.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Sebha',
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_sebha.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Radio',
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_radio.png'),
                    ),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
