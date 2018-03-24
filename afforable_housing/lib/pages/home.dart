import 'package:afforable_housing/pages/profile.dart';
import 'package:afforable_housing/pages/questions.dart';
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
        title: new Text('Connect', style: new TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        //elevation: 0.0,
        actions: <Widget>[
          new IconButton( // action button
            icon: new Icon(Icons.add_alert, color: Colors.black,),
            onPressed: () {

            },
          ),
        ],
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new QuestionPage(),
            new SuggestionsPage(),
            new ProfilePage(),
          ]
      ),
      bottomNavigationBar: new Material(
        color: Theme.of(context).primaryColor,
        shadowColor: Theme.of(context).accentColor,
        child: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.question_answer)),
              new Tab(icon: new Icon(Icons.star)),
              new Tab(icon: new Icon(Icons.person)),
            ]
        ),
      ),
    );
  }
}
