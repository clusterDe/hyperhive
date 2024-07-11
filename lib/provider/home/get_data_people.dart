import 'package:flutter/material.dart';
import 'package:marketplace/models/cards/card_people_model.dart';

mixin GetDataPeople on ChangeNotifier {
  List<CardPeopleModel> _listPeople = [];
  List<CardPeopleModel> get listPeople => _listPeople;

  getDataPeople() {
    var list = [
      CardPeopleModel(
        crown: 'assets/icons/crown1.png',
        image: 'assets/images/cat1.jpeg',
        name: 'Name01',
      ),
      CardPeopleModel(
        image: 'assets/images/cat2.jpeg',
        name: 'Name02',
      ),
      CardPeopleModel(
        image: 'assets/images/cat3.jpeg',
        name: 'Name03',
      ),
      CardPeopleModel(
        image: 'assets/images/cat4.jpeg',
        name: 'Name04',
      ),
      CardPeopleModel(
        image: 'assets/images/cat5.jpeg',
        name: 'Name05',
      ),
      CardPeopleModel(
        image: 'assets/images/cat6.jpeg',
        name: 'Name06',
      ),
      CardPeopleModel(
        image: 'assets/images/cat7.jpeg',
        name: 'Name07',
      ),
      CardPeopleModel(
        image: 'assets/images/cat8.jpeg',
        name: 'Name08',
      ),
      CardPeopleModel(
        image: 'assets/images/cat9.jpeg',
        name: 'Name09',
      ),
      CardPeopleModel(
        image: 'assets/images/cat10.jpeg',
        name: 'Name10',
      ),
    ];

    _listPeople = list;
    notifyListeners();
  }
}
