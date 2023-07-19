import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {

  // we have added default values for the null safety
  static const Categories =1;
  static const settings =2;

  Function OnItemSideMenue;
  HomeDrawer({required this.OnItemSideMenue});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: CupertinoColors.inactiveGray,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 64),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "News App",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        InkWell(
          onTap: () {

            OnItemSideMenue(Categories);

          },
          child: Row(
            children: [
              Icon(Icons.list),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        InkWell(
          onTap: () {
            OnItemSideMenue(settings);
          },
          child: Row(
            children: [
              Icon(Icons.settings),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
