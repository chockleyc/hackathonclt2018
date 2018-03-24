import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {


  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(

        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text('Search')
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite),
              title: new Text('Suggestions')
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text('Profile')
          ),
      ],
    );
  }
}
