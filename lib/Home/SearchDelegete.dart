import 'package:flutter/material.dart';

import '../model/NewsResources.dart';
import '../news/News_Item.dart';
import '../settings/api_manager.dart';

class NewsSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () =>showResults(context),
          icon: Icon(
            Icons.search,
            size: 25,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {

    if(query.isEmpty)return Center(child: Text("suggestions"));
    else {
      return FutureBuilder<NewsResources>(


          future: Manager.getNews(Keyword: query),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Column(
                children: [
                  Text("there is error awlaniii"),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Try again ma3lsh"))
                ],
              );
            }

            if (snapshot.data?.status != 'ok') {
              return Column(
                children: [
                  Text(snapshot.data?.message ?? ''),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Try again ma3lsh tani"))
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

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query.isEmpty)return Center(child: Text("suggestions"));
    else {
      return FutureBuilder<NewsResources>(


          future: Manager.getNews(Keyword: query),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Column(
                children: [
                  Text("there is error awlaniii"),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Try again ma3lsh"))
                ],
              );
            }

            if (snapshot.data?.status != 'ok') {
              return Column(
                children: [
                  Text(snapshot.data?.message ?? ''),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Try again ma3lsh tani"))
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
}
