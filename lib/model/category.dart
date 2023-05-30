import 'package:flutter/material.dart';

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
          id: "Sports",
          title: "Sports",
          imagePath: 'assets/images/sports.png',
          backgroundcolor: Colors.white10),
      Category1(
          id: "Sports",
          title: "Sports",
          imagePath: 'assets/images/sports.png',
          backgroundcolor: Colors.lightBlueAccent),
      Category1(
          id: "Sports",
          title: "Sports",
          imagePath: 'assets/images/sports.png',
          backgroundcolor: Colors.purpleAccent),
      Category1(
          id: "Sports",
          title: "Sports",
          imagePath: 'assets/images/sports.png',
          backgroundcolor: Colors.pinkAccent),
      Category1(
          id: "Sports",
          title: "Sports",
          imagePath: 'assets/images/sports.png',
          backgroundcolor: Colors.orangeAccent),
    ];
  }
}
