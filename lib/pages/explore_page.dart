import 'package:flutter/material.dart';

import 'package:news/explore/pages/hot_people.dart';
import 'package:news/explore/pages/hot_videos.dart';
import 'package:news/explore/pages/hot_news.dart';
import 'package:news/explore/search_data.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Explore'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              onPressed: () {
                showSearch(context: context, delegate: SearchBarDelegate());
              }),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Text("TopPeople"),
            Text("HotNews"),
            Text("HotVideos"),
          ],
          labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          labelPadding: EdgeInsets.only(bottom: 10.0),
          controller: tabController,
          labelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          // unselectedLabelColor: Colors.black,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          HotPeople(),
          HotNews(),
          HotVideos(),
        ],
      ),
    );
  }
}
