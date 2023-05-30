import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/category.dart';

class CategoryItemWidget extends StatelessWidget {
  Category1 category;
  int index;
  CategoryItemWidget({required this.index, required this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
        bottomRight: Radius.circular(index % 2 != 0 ? 0 : 12),
        bottomLeft: Radius.circular(index % 2 == 0 ? 0 : 12),
      )),
      child: Expanded(
        child: Column(
          children: [Image.asset(category.imagePath), Text(category.title)],
        ),
      ),
    );
  }
}
