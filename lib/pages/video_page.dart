import 'package:flutter/material.dart';
import 'package:news/video/pages/page_one.dart';
import 'package:news/video/pages/page_two.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('说时'),
        bottom: TabBar(
          tabs: <Widget>[
            Text("video1"),
            Text("video2"),
          ],
          labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          labelPadding: EdgeInsets.only(bottom: 10.0),
          controller: tabController,
          labelColor: Colors.white70,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.blueAccent,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[PageOne(), PageTwo()],
      ),
    );
  }
}
