import 'package:flutter/material.dart';
import 'package:news/explore/pages/pagetwowidget/horizontal_list_item.dart';

import 'package:news/explore/pages/pagetwowidget/vertical_list_item.dart';
import 'package:news/model/page_two_model.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: newlist.length,
                    itemBuilder: (cxt, i) => HorizontalListItem(index: i)),
              ),
              Container(
                height: 500.0,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: topNewList.length,
                  itemBuilder: (ctx, i) => VerticalListItem(index: i),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
