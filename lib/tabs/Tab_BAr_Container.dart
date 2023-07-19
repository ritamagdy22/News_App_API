import 'package:flutter/material.dart';
import 'package:news/model/SourceREsponse.dart';
import 'package:news/tabs/tab_item.dart';
import '../news/News_Container.dart';

class TabContainer extends StatefulWidget {
  List<Source> sourceList;
  TabContainer({required this.sourceList});
  @override
  State<TabContainer> createState() => _TabContainerState();
}
class _TabContainerState extends State<TabContainer> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: widget.sourceList.length,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.green,
            isScrollable: true,
            onTap: (index) {
              selected = index;
              setState(() {});
            },
            // al source 7aweltha le list mn al tabs
            tabs: widget.sourceList.map((source) => TabItem(source: source,
                    // bab3t al source al byt3mlo map
                    isSelected: selected == widget.sourceList.indexOf(source))).toList(),
          ),
          Expanded(child: NewsContainer(source: widget.sourceList[selected]))
        ],
      ),
    )
    );
  }
}
