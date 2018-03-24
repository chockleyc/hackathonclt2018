import 'package:flutter/material.dart';
import 'package:image_carousel/image_carousel.dart';

class SuggestionsPage extends StatefulWidget {
  @override
  _SuggestionsPageState createState() => new _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Suggestions'),
      ),
      body: new ImageCarousel(
        <ImageProvider>[
          new NetworkImage('https://static.pexels.com/photos/186077/pexels-photo-186077.jpeg'),
          new NetworkImage('http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2017/08/ferrari-portofino-reveal-2017-featured-new.jpg'),
          new NetworkImage('http://www.hilversum.ferraridealers.com/siteasset/ferraridealer/54f07ac8c35b6/961/420/selected/0/0/0/54f07ac8c35b6.jpg'),
        ],
        interval: new Duration(seconds: 60),
      ),
    );
  }
}


