import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: CupertinoColors.systemGreen,
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
          onTap: () {},
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
          onTap: () {},
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
