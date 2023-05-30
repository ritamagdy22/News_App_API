import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/SourceREsponse.dart';
import 'package:news/settings/api_manager.dart';

class CategoryDetails extends StatelessWidget {

static const String routename = "Category_Details";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
      future: Manager.getSource(),
        builder: ((context ,snapshot){
     if(snapshot.connectionState == ConnectionState.waiting){
       return Center(
       child:  CircularProgressIndicator(),
       );
    }else if (snapshot.hasError){
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

     var sourcelist = snapshot.data?.sources??[];
     return ListView.builder(
    itemBuilder: (context,index){
     return Text(sourcelist[index].name ?? '');
    },
    itemCount: sourcelist.length,
    );

    })

    );
  }
}
