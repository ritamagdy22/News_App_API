import 'package:flutter/material.dart';
import 'package:news/model/SourceREsponse.dart';
import 'package:news/category/category.dart';
import 'package:news/settings/api_manager.dart';
import 'package:news/tabs/Tab_BAr_Container.dart';

class CategoryDetails extends StatelessWidget {
  static const String routename = "Category_Details";
  //object from class moderl
  Category1? category;
  CategoryDetails({this.category});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future: Manager.getSource(category?.id?? ''),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("there is error"),
                ElevatedButton(onPressed: () {}, child: Text("Try again"))
              ],
            );}

          if (snapshot.data?.status != 'ok') {
            return Column(
              children: [
                Text("there is error tanii"),
                ElevatedButton(onPressed: () {}, child: Text("Try again"))
              ],
            );
          }

          var sourceslist = snapshot.data?.sources ?? [];
          return TabContainer(sourceList: sourceslist);

        }));
  }
}
