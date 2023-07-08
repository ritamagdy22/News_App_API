import 'package:flutter/material.dart';
//class model le kol details al category al wahid (id bg asm )
class Category1 {
  String id;
  String title;
  String imagePath;
  Color backgroundcolor;
  Category1({
    required this.id,
    required this.title,
    required this.backgroundcolor,
    required this.imagePath,
  });
  static List<Category1> getCatgeory1() {
    return [
      Category1(
          id: "Sports",
          title: "Sports",
          imagePath: 'assets/images/sports.png',
          backgroundcolor: Colors.red),
      Category1(
          id: "Science",
          title: "Science",
          imagePath: 'assets/images/science.png',
          backgroundcolor: Colors.cyanAccent),
      Category1(
          id: "politics",
          title: "politics",
          imagePath: 'assets/images/politics.png',
          backgroundcolor: Colors.blueGrey),
      Category1(
          id: "healths",
          title: "health",
          imagePath: 'assets/images/health.png',
          backgroundcolor: Colors.purpleAccent),
      Category1(
          id: "Enviroment",
          title: "Enviroment",
          imagePath: 'assets/images/enviroment.png',
          backgroundcolor: Colors.pinkAccent),
      Category1(
          id: "Business",
          title: "Business",
          imagePath: 'assets/images/business.png',
          backgroundcolor: Colors.orangeAccent),
    ];
  }
}
