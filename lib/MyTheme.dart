import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xFFB7935F);
  static Color blackColor = Colors.black;
  static Color whiteColor = Colors.white;
  static Color primaryDark = Color(0xFF141A2E);
  static Color yellowColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
      titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      titleSmall: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
      bodyLarge: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w700,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: MyTheme.whiteColor)),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
      titleMedium: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),
      titleSmall: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 25, color: Colors.white),
      bodyLarge: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 20, color: yellowColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w700, color: yellowColor),
    ),
  );
}
