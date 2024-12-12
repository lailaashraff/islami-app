import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xFFB7935F);
  static Color blackColor = Colors.black;
  static Color whiteColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColorLight: primaryLight,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
        )),
  );
}
