import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_neumorphism_ui/screens/home.dart';
import 'package:weather_neumorphism_ui/util/consts.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Constants.lightPrimary,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      home: Home(),
    );
  }
}