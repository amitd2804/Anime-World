import 'package:flutter/material.dart';

class ThemeClass {
  Color lightPrimaryColor = Colors.black;
  Color darkPrimaryColor = Color.fromARGB(255, 58, 53, 53);
  Color secondaryColor = Colors.amber;
  Color accentColor = Colors.redAccent;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.lightPrimaryColor,
        secondary: _themeClass.secondaryColor),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkPrimaryColor,
    ),
  );
}

ThemeClass _themeClass = ThemeClass();