import 'package:afforable_housing/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:image_carousel/image_carousel.dart';

class SuggestionsPage extends StatefulWidget {
  @override
  _SuggestionsPageState createState() => new _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Suggestions'),
    );

    /*new ImageCarousel(
        <ImageProvider>[
          new NetworkImage('https://static.pexels.com/photos/186077/pexels-photo-186077.jpeg'),
          new NetworkImage('https://images.pexels.com/photos/221540/pexels-photo-221540.jpeg'),
          new NetworkImage('https://images.pexels.com/photos/243722/pexels-photo-243722.jpeg'),
        ]);*/
  }
}


