import 'package:flutter/cupertino.dart';
import 'package:news/model/NewsResources.dart';

class NewsItem extends StatelessWidget {
  News news;
  
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
  return Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(
margin: EdgeInsets.all(15),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12)
      ),
      
      child: Image.network(news.urlToImage ?? ''),
    ),
    Text(news.author?? ''),
    Text(news.title?? ''),
    Text(news.publishedAt?? '',

    textAlign: TextAlign.end,
    ),



  ],
);
  }
}
