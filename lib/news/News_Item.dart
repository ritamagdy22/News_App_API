import 'package:flutter/cupertino.dart';
import 'package:news/model/NewsResources.dart';

class NewsItem extends StatelessWidget {
  //object mn class al news
  News news;
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
