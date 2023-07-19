import 'package:flutter/material.dart';
import 'package:news/model/NewsResources.dart';

class NewsDetailsScreen extends StatelessWidget {
  static const RouteName = "NewsDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)!.settings.arguments as News;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(12),
            // 7tete al round al fl sora
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),

            child: Image.network(news.urlToImage ?? ''),
          ),
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
          children: [
            TextButton.icon(
              onPressed: (){},
                label: Text("View more about the article"),
              icon: Icon(Icons.arrow_back_ios_sharp),


            ),



          ],

        )

        ],
      ),
    );
  }
}
