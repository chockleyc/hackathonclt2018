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
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: new IconThemeData(color: Colors.black),
        elevation: 0.0,
        actions: <Widget>[
          new Icon(Icons.thumb_up),
        ],
      ),
      body: new ListView(
        children: [
          new Transform(
            transform: new Matrix4.translationValues(0.0, -56.0, 0.0), child: new Hero(
                  tag: house.id.toString(),
                  child: new Image(image: new NetworkImage(house.photo)),
                ),
          ),
          new Transform(
          transform: new Matrix4.translationValues(0.0, -56.0, 0.0), child: new ListTile(
                  title: new Text('Street Address'),
                  subtitle: new Text('Charlotte, NC, 28203'),
                  trailing: new Column(
                    children: [
                      new Icon(Icons.mail),
                      new Text('Contact'),
                    ],
                  ),
                ),
          ),
          new Transform(
            transform: new Matrix4.translationValues(0.0, -56.0, 0.0), child: new Row(
              children: [
                new Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text('House Description'),
                ),
              ],
          ),
          ),
          new Transform(
              transform: new Matrix4.translationValues(0.0, -56.0, 0.0), child:new Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pellentesque augue felis, at auctor libero viverra quis.'),
           ),
          ),
          new Transform(
            transform: new Matrix4.translationValues(0.0, -56.0, 0.0), child: new Row(
                children: [
                  new Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text('Section 8 Accepted? Yes'),
                  ),
                ],
              ),
          ),
          new Transform(
            transform: new Matrix4.translationValues(0.0, -56.0, 0.0), child:new Row(
                children: [
                  new Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text('HUD Accepted? No'),
                  ),
                ],
              ),
          ),
        ],
      ),
      bottomNavigationBar: new Container(
          child: new ListTile(
            title: new Text('\$${house.price.toString()} per month'),
            subtitle: new Text('Available on 8/24/18'),
            trailing: new RaisedButton(
                  onPressed: (){

                  },
                  child: new Text('Apply Now'),
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ),
    );
  }
}
