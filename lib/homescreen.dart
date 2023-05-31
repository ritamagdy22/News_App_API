import 'package:flutter/material.dart';
import 'package:news/Drawer.dart';
import 'package:news/category/category_details.dart';
import 'package:news/category/catgegors_Widget.dart';

class HomeScreen extends StatelessWidget {


  static const String routename ="HomeScreen";

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
        title: Text("News App",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,

      ),
        drawer: Drawer(
        child: HomeDrawer(),
      ),

      body: CategoriesWidget(),

    );
  }
}
