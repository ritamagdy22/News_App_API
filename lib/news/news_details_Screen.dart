import 'package:flutter/material.dart';
import 'package:news/model/NewsResources.dart';

class NewsDetailsScreen extends StatelessWidget {
  static const RouteName = "NewsDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)!.settings.arguments as News;
    return Scaffold(
      appBar: AppBar(
        title: Text("News details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(5),
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
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.end,
                ),
                Text(
                  news.title ?? '',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  news.publishedAt ?? '',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.end,
                ),
                SizedBox(height: 40),
                Text(news.description ?? ''),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      onPressed: () => LaunchUrl(news.url),
                      label: Text("View more about the article"),
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  LaunchUrl(String? Url) {
    if (Url == null) {
      return;
    }
  }
}
