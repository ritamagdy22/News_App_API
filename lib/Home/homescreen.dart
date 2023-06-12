import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/Home/Drawer.dart';
import 'package:news/category/category_details.dart';
import 'package:news/category/catgegors_Widget.dart';

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

      ),
        drawer: Drawer(
        child: HomeDrawer(Onside: ),
      ),
/*
law al user msh ma5tar hagaa ma3mlsh click 3ala haga
y3rd al screen al 3adia
 */
      body:SelectedItemDarwer==HomeDrawer.settings?
          //: settings tab


      selectedcategory == null?
          CategoriesWidget(CallbackFunction: OnCategoryClick):
          // tab law mn null w 3amlt click ? a3rdy al details bta3t al action

      CategoryDetails(category: selectedcategory!),

    );
  }
}

/*
hata5od parameter 3shan hatnfz action le haga tania
al parameter haikon object mn al categor 3shan na check
al action al haihsal
 */

Category? selectedcategory= null;
void OnCategoryClick( Category category){
  selectedcategory = category;


}

int SelectedItemDarwer= HomeDrawer.Categories;
void onItemSelected(int SelectedItemDarwer){
  SelectedItemDarwer = SelectedItemDarwer;
  //Navigator.pop(context);
  //selectedcategory =null;
}