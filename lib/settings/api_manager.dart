import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/NewsResources.dart';
import 'package:news/model/SourceREsponse.dart';
class Manager {

  static const String baseUrl = "newsapi.org";

  // https://newsapi.org/v2/top-headlines/sources?apiKey=db9bff9ebc33443abd83acf3101c7fb3
  static Future<SourceResponse>getSource() async {
    var url = Uri.https(baseUrl,'/v2/top-headlines/sources', {
          "apiKey" : "db9bff9ebc33443abd83acf3101c7fb3"
        }
    );
    try{
// msh 3arfa ak server hairod 3alia amta
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourceRsponse = SourceResponse.fromJson(json);
      return sourceRsponse;


    } catch (e){
 throw e;

    }


  }


  static Future<NewsResources> getNews(String sourceId)async{

    //GET https://newsapi.org/v2/everything?apiKey=db9bff9ebc33443abd83acf3101c7fb3

    var url = Uri.https(baseUrl , "/v2/everything",
    {
      "apiKey ": "db9bff9ebc33443abd83acf3101c7fb3",
       "source" : sourceId,

  }
    );
try{
  var response = await http.get(url);
  var bodyString = response.body;
  var json = jsonDecode(bodyString);
  var newsRsponse = NewsResources().fromJson(json);
  return newsRsponse;

}catch (e){

  throw e;
}

  }

}