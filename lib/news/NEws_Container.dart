import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/NewsResources.dart';
import 'package:news/model/SourceREsponse.dart';
import 'package:news/settings/api_manager.dart';

import '../tabs/Tab_BAr_Container.dart';

class NewsContainer extends StatelessWidget {

  Source source;

  NewsContainer({required this.source});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResources>
      (
        future: Manager.,
        builder: ((context,snapshot){

    if(snapshot.connectionState == ConnectionState.waiting){
    return Center(
    child:  CircularProgressIndicator(),
    );
    }
    else if (snapshot.hasError){
    return Column(

    children: [
    Text("there is error"),
    ElevatedButton(onPressed: (){}, child: Text("Try again"))
    ],

    );
    }

    if(snapshot.data?.status != 'ok'){
    return Column(

    children: [
    Text("there is error"),
    ElevatedButton(onPressed: (){}, child: Text("Try again"))
    ],
    );
    }

    var sourceslist = snapshot.data?.sources??[];
    return TabContainer(sourceList: sourceslist);
    };
  }
}