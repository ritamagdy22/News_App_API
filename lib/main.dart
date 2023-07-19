import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/category/category_details.dart';
import 'package:news/Home/homescreen.dart';
import 'package:news/model/MyTheme.dart';
import 'package:news/news/news_details_Screen.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        HomeScreen.routename:(context)=>HomeScreen(),
        NewsDetailsScreen.RouteName:(context)=>NewsDetailsScreen(),
        CategoryDetails.routename: (context)=>CategoryDetails(),
      },
      initialRoute: HomeScreen.routename,
      theme: MyTheme.LightTheme,
    );

  }
}