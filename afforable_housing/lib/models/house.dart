import 'package:flutter/material.dart';

class House {
  int _price;
  int _id;
  String _address;
  String _photo;
  HouseType _type;


  House(this._id, this._price, this._photo, this._type);

  int get id => this._id;
  int get price => this._price;
  String get photo => this._photo;
  HouseType get type => this._type;
}

enum HouseType{
  house,
  apartment,
  townhouse,
}