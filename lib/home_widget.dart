import 'package:flutter/material.dart';
import 'pages.dart';
import 'home_view.dart';
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children =[
    HomePage(),
    ExplorePage(),
    PasttripPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:  Text("                              Book My Seat"),

      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("home"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            title: new Text("View booking"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.supervised_user_circle),
            title: new Text("Profile"),
          ),
        ] ,
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex=index;
    });

  }
}
