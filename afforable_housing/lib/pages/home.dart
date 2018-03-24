import 'package:afforable_housing/pages/profile.dart';
import 'package:afforable_housing/pages/search.dart';
import 'package:afforable_housing/pages/suggestions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Thor App'),
        actions: <Widget>[
          new IconButton( // action button
            icon: new Icon(Icons.add_alert),
            onPressed: () {

            },
          ),
        ],
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new SearchPage(),
            new SuggestionsPage(),
            new ProfilePage(),
          ]
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.search)),
              new Tab(icon: new Icon(Icons.favorite_border)),
              new Tab(icon: new Icon(Icons.person)),
            ]
        ),
      ),
    );
  }
}
