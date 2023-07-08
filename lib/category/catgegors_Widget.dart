import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/category/category_Item_Widget.dart';
import 'package:news/category/category.dart';

class CategoriesWidget extends StatelessWidget {
  var categorylist = Category1.getCatgeory1();
  /*
  we have to make callback function
   */
  Function OnCategoryItemClicked;
  CategoriesWidget({required this.OnCategoryItemClicked});
  
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),
          Text("Pick up your categor...",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 18, crossAxisSpacing: 18),
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (){
/*
 hnadi al callback function w hat5od menena parameter 3shan 3awzin
 nd8at 3ala kol haga twd "hafraa2 ban kol category w al tany ezya ?"
 */
                    OnCategoryItemClicked(categorylist[index]);

                  },

                  child: CategoryItemWidget(
                      index: index, category: categorylist[index]),
                );
              }),
              itemCount: categorylist.length,
            ),
          )
        ],
      ),
    );
  }
}
