import 'package:flutter/material.dart';

class Constants {
  //App related strings
  static String appName = "Weather Stats";

  //Colors for theme
  static Color lightPrimary = Color(0xfff2f3f7);
  static Color lightAccent = Colors.blue;
  static Color lightBG = Color(0xfff2f3f7);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
  );
}
