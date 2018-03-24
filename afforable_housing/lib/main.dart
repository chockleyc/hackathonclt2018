import 'package:afforable_housing/pages/home.dart';
import 'package:afforable_housing/pages/profile.dart';
import 'package:afforable_housing/pages/search.dart';
import 'package:afforable_housing/pages/suggestions.dart';
import 'package:afforable_housing/pages/questions.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final ThemeData theme =  new ThemeData(
    primaryColor: Colors.deepOrange[400],
  );


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Housing Connect CLT',
      theme: theme,
      home: new HomePage(),
      routes: <String, WidgetBuilder> {
        '/search': (BuildContext context) => new QuestionPage(),
        '/suggestions': (BuildContext context) => new SuggestionsPage(),
        '/profile' : (BuildContext context) => new ProfilePage(),
      },
    );
  }
}
