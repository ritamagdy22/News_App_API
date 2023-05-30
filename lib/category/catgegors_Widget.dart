import 'package:flutter/cupertino.dart';
import 'package:news/category/category_Item_Widget.dart';
import 'package:news/model/category.dart';

class CategoriesWidget extends StatelessWidget {
  var categorylist = Category1.getCatgeory1();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Pick up your categor"),
          SizedBox(height: 12,),
          
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 18, crossAxisSpacing: 18),
              itemBuilder: ((context, index) {
                return CategoryItemWidget(
                    index: index, category: categorylist[index]);
              }),
              itemCount: categorylist.length,
            ),
          )
        ],
      ),
    );
  }
}
