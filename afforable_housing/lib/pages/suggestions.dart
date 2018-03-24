import 'package:afforable_housing/models/house.dart';
import 'package:afforable_housing/pages/details.dart';
import 'package:flutter/material.dart';

class SuggestionsPage extends StatefulWidget {
  @override
  _SuggestionsPageState createState() => new _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  double size = 80.0;

  List<House> houses = [
    new House(1, 440, 'https://images.pexels.com/photos/277667/pexels-photo-277667.jpeg'),
    new House(2, 500, 'https://images.pexels.com/photos/259098/pexels-photo-259098.jpeg'),
    new House(3, 750, 'https://images.pexels.com/photos/129494/pexels-photo-129494.jpeg'),
    new House(4, 600, 'https://images.pexels.com/photos/144632/pexels-photo-144632.jpeg'),
    new House(5, 1200, 'https://images.pexels.com/photos/415687/pexels-photo-415687.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView(
            children: [
              new FilterBar(),
              new ListTile(
                title: new Text('Top Suggestion'),
              ),
              new HouseSuggestion(houses[0]),
              new HouseSuggestion(houses[1]),
              new HouseSuggestion(houses[2]),
              new HouseSuggestion(houses[3]),
              new HouseSuggestion(houses[4]),
            ],
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

  final House house;

  HouseSuggestion(this.house);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new GestureDetector(
        onTap: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new HouseDetailsPage(house)));
        },
        child: new Card(
          child: new Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              new Hero(
                child: new Image(image: new NetworkImage(house.photo)),
                tag: house.id.toString(),
              ),
              new Container(
                color: Colors.black54,
                child: new ListTile(
                  title: new Text('Top Home',
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: new Text('\$${house.price.toString()} per month',
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



