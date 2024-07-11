import 'package:flutter/material.dart';

import '../../models/cards/card_people_model.dart';

class ProfileDetailProvider extends ChangeNotifier {
  ProfileDetailProvider({CardPeopleModel? peopleData}) {
    getPeopleData(peopleData);
  }

  CardPeopleModel? _dataPeople;
  CardPeopleModel? get dataPeople => _dataPeople;

  getPeopleData(CardPeopleModel? data) {
    _dataPeople = data;
    notifyListeners();
  }
}
