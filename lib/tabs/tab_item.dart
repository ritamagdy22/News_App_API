import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/MyTheme.dart';
import 'package:news/model/SourceREsponse.dart';

// related to container al tabs al btzhar mn fo2 bas in details ba styles
class TabItem extends StatelessWidget {
//object from source class(to , from) json
   Source source;
   bool isSelected;

TabItem({required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
  return Container(
padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(22),
      // 3shan al selected tabs n7ded lonha
      color:  isSelected ? Theme.of(context).primaryColor: Colors.grey,
      border: Border.all(color: Theme.of(context).primaryColor)
    ),

    child: Text(source.name?? '',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color:isSelected? MyTheme.colorwhite:MyTheme.colorwhite
    ),
    ),

  );
  }
}
