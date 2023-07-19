import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/NewsResources.dart';
import 'package:news/news/news_details_Screen.dart';

class NewsItem extends StatelessWidget {
  //object mn class al news
  News news;
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.of(context).pushNamed(NewsDetailsScreen.RouteName,arguments: news),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(10),
            height: 220,
            // 7tete al round al fl sora
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.network(news.urlToImage ?? ''),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  news.author ?? '',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  news.title ?? '',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  news.publishedAt ?? '',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.end,
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }



}


