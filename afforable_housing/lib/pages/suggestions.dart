import 'package:afforable_housing/models/house.dart';
import 'package:afforable_housing/pages/details.dart';
import 'package:flutter/material.dart';

class SuggestionsPage extends StatefulWidget {
  @override
  _SuggestionsPageState createState() => new _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  double size = 80.0;

  List<House> allHouses = [
    new House(1, 440, 'https://images.pexels.com/photos/277667/pexels-photo-277667.jpeg', HouseType.house),
    new House(2, 500, 'https://images.pexels.com/photos/259098/pexels-photo-259098.jpeg', HouseType.house),
    new House(3, 750, 'https://images.pexels.com/photos/129494/pexels-photo-129494.jpeg', HouseType.apartment),
    new House(4, 600, 'https://images.pexels.com/photos/144632/pexels-photo-144632.jpeg', HouseType.apartment),
    new House(5, 1200, 'https://images.pexels.com/photos/415687/pexels-photo-415687.jpeg', HouseType.townhouse),
  ];

  List<House> filteredHouses;

  @override
  void initState(){
    filteredHouses = allHouses;
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
            children: createSuggestionList()
          );
  }

  List<Widget> createSuggestionList(){
    List<Widget> list = [];
    list.add(createFilterBar());
    list.add(new ListTile(
      title: new Text('Top Suggestion'),
    ));
    for (House suggestion in filteredHouses){
      list.add(new HouseSuggestion(suggestion));
    }
    return list;
  }

  Widget createFilterBar(){
    return new Container(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: new Row(
        children: [
          createFilterOption('Apartment'),
          createFilterOption('House'),
          createFilterOption('Townhouse'),
        ],
      ),
    );
  }

  Widget createFilterOption(String title){
    Map<String, String> images = {
      'Apartment': 'http://media.equityapartments.com/images/c_crop,x_0,y_0,w_1920,h_1080/c_fill,w_1920,h_1080/q_80/4152-21/square-one-apartments-exterior.jpg',
      'House': 'http://www.palmatin.com/wp-content/uploads/2013/06/painted-square-log-house1.jpg',
      'Townhouse': 'https://static01.nyt.com/images/2014/08/03/realestate/03TOWNHOUSE4/03townhouse4-master1050.jpg',
    };

    return new Expanded(
      child: new GestureDetector(
        onTap: () {
          HouseType type;
          if (title == 'House'){
            type = HouseType.house;
          } else if (title == 'Apartment'){
            type = HouseType.apartment;
          } else if (title == 'Townhouse'){
            type = HouseType.townhouse;
          }
          this.setState((){
            filteredHouses = allHouses.where((i) => i.type == type).toList();
          });
        },
        child: new Column(children: [
          new Container(
            width: size,
            height: size,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: new DecorationImage(
                  image: new NetworkImage(images[title]),
                fit: BoxFit.cover,
              ),
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
      ),
    );
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
              createFilterOption('Apartment'),
              createFilterOption('House'),
              createFilterOption('Townhome'),
            ],
          ),
    );
  }

  Widget createFilterOption(String title){
    return new Expanded(
      child: new GestureDetector(
        onTap: () {
          if (title == 'House'){

          }
        },
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

      return  new Expanded(
        child: new GestureDetector(
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



