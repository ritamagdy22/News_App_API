import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/MyTheme.dart';
import 'package:news/model/SourceREsponse.dart';

class TabItem extends StatelessWidget {

  Source source;
   bool isSelected;

TabItem({required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color:  isSelected ? Theme.of(context).primaryColor: Colors.orangeAccent,
border: Border.all(color: Theme.of(context).primaryColor)
    ),

    child: Text(source.name?? '',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22

    ),
    ),
  );
  }
}
