import 'package:afforable_housing/pages/suggestions.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  ThemeData theme =  new ThemeData(
    primarySwatch: Colors.blue,
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: new SuggestionsPage(),
    );
  }
}
