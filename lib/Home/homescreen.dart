import 'package:flutter/material.dart';
import 'package:news/Home/Drawer.dart';
import 'package:news/Home/SearchDelegete.dart';
import 'package:news/category/category_details.dart';
import 'package:news/category/catgegors_Widget.dart';
import '../category/category.dart';

class HomeScreen extends StatefulWidget {
  static const String routename ="HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News App",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: ()=>showSearch(context: context, delegate: NewsSearch()),
                icon: Icon(Icons.search, size: 32,))
          ],

        ),
        drawer: Drawer(
          child: HomeDrawer(OnItemSideMenue: onItemSideMenueClicked),
        ),
        /*
law al user msh ma5tar hagaa ma3mlsh click 3ala haga
y3rd al screen al 3adia
 */
        body: selectedcategory == HomeDrawer.settings ?
            Text("data")
            :

        selectedcategory == null ?
        CategoriesWidget(OnCategoryItemClicked: OnCategoryItemClicked)
            :
        // tab law mn null w 3amlt click ? a3rdy al details bta3t al action
        CategoryDetails(category: selectedcategory)
      ,

    );
  }

    /*
  hata5od parameter 3shan hatnfz action le haga tania
  al parameter haikon object mn al category 3shan na check
  al action al haihsal
  */

  Category1? selectedcategory = null;
  // ha save al user a5taro
  void OnCategoryItemClicked(Category1 category) {
    selectedcategory = category;
    setState(() {

    });
  }
   int SelectedItemDarwer = HomeDrawer.Categories;
   void onItemSideMenueClicked(int newSelectedItemDarwer) {
   SelectedItemDarwer= newSelectedItemDarwer;
   Navigator.pop(context);
    //selectedcategory =null;
     setState(() {

     });
  }


}





