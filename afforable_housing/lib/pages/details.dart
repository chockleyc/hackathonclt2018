import 'package:afforable_housing/models/house.dart';
import 'package:flutter/material.dart';

class HouseDetailsPage extends StatefulWidget {
  final House house;

  HouseDetailsPage(this.house);

  @override
  _HouseDetailsPageState createState() => new _HouseDetailsPageState(house);
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  final House house;

  _HouseDetailsPageState(this.house);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(backgroundColor: Colors.transparent,elevation: 0.0,),
      body: new Column(
        children: [
          new Transform(
            transform: new Matrix4.translationValues(0.0, -56.0, 0.0),
            child: new Hero(
              tag: house.id.toString(),
              child: new Image(image: new NetworkImage(house.photo)),
            ),
          ),
        ]
      ),
    );
  }
}
