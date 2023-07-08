import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/model/NewsResources.dart';
import 'package:news/model/SourceREsponse.dart';
class Manager {
  static const String baseUrl = "newsapi.org";

  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=db9bff9ebc33443abd83acf3101c7fb3
  static Future<SourceResponse>getSource(String CategoryId) async {
    var url = Uri.https(baseUrl,'/v2/top-headlines/sources', {
          "apiKey" : "db9bff9ebc33443abd83acf3101c7fb3",
          "category":CategoryId
      // hab3t al category 3shan yfra2 ban kolo
        }
    );
    try{
// msh 3arfa al server hairod 3alia amta
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourceRsponse = SourceResponse.fromJson(json);
      return sourceRsponse;


    } catch (e){
 throw e;

    }


  }

// future of newsresponse : 3shan msh damna al server hayrod 3alia ba eh aw amta

  static Future<NewsResources> getNews(String sourceId)async{

    //GET https://newsapi.org/v2/everything?apiKey=db9bff9ebc33443abd83acf3101c7fb3

// (authority) base url : asm al server bta3na
//unicode path :   /v2/everything
  //? = query yani "apiKey" : "db9bff9ebc33443abd83acf3101c7fb3"

    var url = Uri.https(baseUrl , "/v2/everything",
    {
      "apiKey": "db9bff9ebc33443abd83acf3101c7fb3",

      // lama ad8at 3al tab ( source Id) yb2a habasih le function
      //parameter  ( lama ados ywdini 3al haga al 3izaaha )
       "sources" : sourceId,
  }
    );
try{
  // al get btrg3li al response  ( await w async  ) msh 3arfa al server hayrod amta
  var response = await http.get(url);
  // al response al rag3 mawgod fl body w da mn no3 string jsondecode 3shan a7wlo json
  var bodyString = response.body;
  var json = jsonDecode(bodyString);
  var newsResponse = NewsResources.fromJson(json);
  return newsResponse;
}catch (e){
  throw e;
}
  }


}