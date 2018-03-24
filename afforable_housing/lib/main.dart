import 'package:afforable_housing/pages/home.dart';
import 'package:afforable_housing/pages/profile.dart';
import 'package:afforable_housing/pages/search.dart';
import 'package:afforable_housing/pages/suggestions.dart';
import 'package:afforable_housing/pages/questions.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final ThemeData theme =  new ThemeData(
    primaryColor: Colors.blue,
  );


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: new QuestionPage(),
      routes: <String, WidgetBuilder> {
        '/search': (BuildContext context) => new SearchPage(),
        '/suggestions': (BuildContext context) => new SuggestionsPage(),
        '/profile' : (BuildContext context) => new ProfilePage(),
      },
    );
  }
}
