// import 'package:flutter/material.dart';
// import 'package:news/explore/pages/page_four.dart';
// // import 'package:news/explore/pages/page_one.dart';
// import 'package:news/explore/pages/page_three.dart';
// import 'package:news/explore/pages/page_two.dart';
// // import 'package:news/explore/category_selector.dart';
// import 'package:news/explore/search_data.dart';

// class ExplorePage extends StatefulWidget {
//   @override
//   _ExplorePageState createState() => _ExplorePageState();
// }

// class _ExplorePageState extends State<ExplorePage> {
//   // TabController tb;

//   // @override
//   // void initState() {
//   //   tb = TabController(length: 4, vsync: this);
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           elevation: 0,
//           title: new Text('说时'),
//           actions: <Widget>[
//             IconButton(
//                 icon: Icon(Icons.search),
//                 iconSize: 30.0,
//                 onPressed: () {
//                   showSearch(context: context, delegate: searchBarDelegate());
//                 }),
//           ],
//         ),
//         body: DefaultTabController(
//           length: 3,
//           child: new Column(
//             children: <Widget>[
//               new Container(
//                 height: 50.0,
//                 // color: Colors.red,
//                 constraints: BoxConstraints(maxHeight: 150.0),
//                 child: new Material(
//                   color: Colors.white54,
//                   child: new TabBar(
//                     indicatorColor: Colors.white70,
//                     unselectedLabelColor: Colors.grey,
//                     labelColor: Colors.black,
//                     tabs: <Widget>[
//                       Text("撒旦"),
//                       Text("撒旦"),
//                       Text("撒旦"),
//                       // Text("撒旦"),
//                     ],
//                     labelStyle: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               new Expanded(
//                 child: new TabBarView(
//                   children: [PageTwo(), PageThree(), PageFour()],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// }

// import 'package:flutter/material.dart';
// import 'package:news/explore/pages/page_four.dart';
// import 'package:news/explore/pages/page_one.dart';
// import 'package:news/explore/pages/page_three.dart';
// import 'package:news/explore/pages/page_two.dart';
// import 'package:news/explore/search_data.dart';

// class ExplorePage extends StatefulWidget {
//   @override
//   _ExplorePageState createState() => _ExplorePageState();
// }

// class _ExplorePageState extends State<ExplorePage>
//     with SingleTickerProviderStateMixin {
//   @override
//   TabController tabController;
//   void initState() {
//
//     super.initState();
//     tabController = TabController(vsync: this, length: 4);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: new Text('说时'),
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(Icons.search),
//               iconSize: 30.0,
//               onPressed: () {
//                 showSearch(context: context, delegate: searchBarDelegate());
//               }),
//         ],
//       ),
//       body: Container(
//         height: 500.0,
//         color: Colors.blueAccent,
//         child: ListView(
//           children: <Widget>[
//             TabBar(
//               controller: tabController,
//               indicatorColor: Color(0xFFFE8A7E),
//               indicatorSize: TabBarIndicatorSize.label,
//               indicatorWeight: 4.0,
//               isScrollable: true,
//               labelColor: Color(0xFF440206),
//               unselectedLabelColor: Color(0xFF440206),
//               tabs: <Widget>[
//                 Tab(
//                   child: Text(
//                     'PageOne1',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     'PageTwo',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     'PageThree',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     'PageThree',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 10.0),
//             TabBarView(
//               controller: tabController,
//               children: <Widget>[
//                 new PageOne(),
//                 new PageTwo(),
//                 new PageThree(),
//                 new PageFour(),
//                 // new FoodList(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news/explore/pages/page_four.dart';
import 'package:news/explore/pages/page_one.dart';
import 'package:news/explore/pages/page_three.dart';
import 'package:news/explore/pages/page_two.dart';
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
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('说时'),
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
            Text("时代"),
            Text("时代"),
            Text("时代"),
            Text("时代"),
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
        children: <Widget>[PageOne(), PageTwo(), PageThree(), PageFour()],
      ),
    );
  }
}
