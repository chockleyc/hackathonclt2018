import 'package:flutter/material.dart';
import 'package:image_carousel/image_carousel.dart';

class SuggestionsPage extends StatefulWidget {
  @override
  _SuggestionsPageState createState() => new _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  double size = 80.0;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: [
          new FilterBar(),
          new ListTile(
            title: new Text('Top Suggestion'),
          ),
          new HouseSuggestion(),
        ],
      ),
    );

    /*new ImageCarousel(
        <ImageProvider>[
          new NetworkImage('https://static.pexels.com/photos/186077/pexels-photo-186077.jpeg'),
          new NetworkImage('https://images.pexels.com/photos/221540/pexels-photo-221540.jpeg'),
          new NetworkImage('https://images.pexels.com/photos/243722/pexels-photo-243722.jpeg'),
        ]);*/
  }
}

class FilterBar extends StatelessWidget {

  final double size = 80.0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: new Row(
            children: [
              new FilterOption('Apartment'),
              new FilterOption('House'),
              new FilterOption('Townhome'),
            ],
          ),
    );
  }
}

class FilterOption extends StatelessWidget {
  final String title;

  FilterOption(this.title);


  @override
  Widget build(BuildContext context) {

    final double size = 80.0;

    return new Expanded(
      child: new Column(children: [
        new Container(
          width: size,
          height: size,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: new Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
        ),
        new Padding(
            child: new Text(title),
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        ),
      ],
      ),
    );
  }
}

class HouseSuggestion extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new GestureDetector(
        onTap: (){

        },
        child: new Card(
          child: new Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              new Image(image: new NetworkImage('https://static.pexels.com/photos/186077/pexels-photo-186077.jpeg')),
              new Container(
                color: Colors.black54,
                child: new ListTile(
                  title: new Text('Top Home',
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: new Text('\$440 per month',
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



