import 'package:flutter/material.dart';

class MyTheme {
  static Color LightPrimary = Colors.grey;
  static Color colorwhite = Colors.white;
  static Color colorblack = Colors.black45;
  static Color green = Colors.green;
  static Color red = Colors.red;
  static Color pink = Colors.pinkAccent;
  static Color yellow = Colors.yellow;
  static Color blue = Colors.lightBlueAccent;

  static ThemeData LightTheme = ThemeData(
      primaryColor: LightPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ));
}
