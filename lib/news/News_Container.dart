import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/NewsResources.dart';
import 'package:news/model/SourceREsponse.dart';
import 'package:news/news/News_Item.dart';
import 'package:news/settings/api_manager.dart';

class NewsContainer extends StatelessWidget {
  Source source;
  NewsContainer({required this.source});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResources>
      (
        future: Manager.getNews(source.id??''),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("there is error awlaniii"),
                ElevatedButton(onPressed: () {}, child: Text("Try again ma3lsh"))
              ],
            );
          }

          if (snapshot.data?.status != 'ok') {
            return Column(
              children: [
                Text(snapshot.data?.message??''),
                ElevatedButton(onPressed: () {}, child: Text("Try again ma3lsh tani"))
              ],
            );
          }

          var newList = snapshot.data?.articles ?? [];

          return ListView.builder(
              itemBuilder: ((context, index) {
                return NewsItem(news: newList[index]);
              }),
            itemCount: newList.length,

          );
        })

    );
  }
}
