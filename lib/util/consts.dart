import 'package:flutter/material.dart';

class Constants{

  //App related strings
  static String appName = "Weather Stats";


  //Colors for theme
  static Color lightPrimary = Color(0xfff2f3f7);
  static Color darkPrimary = Color(0xff121212);
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blue;
  static Color lightBG = Color(0xfff2f3f7);
  static Color darkBG = Color(0xff191919);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
//    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
  );
}