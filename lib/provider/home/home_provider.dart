import 'package:flutter/material.dart';
import 'package:marketplace/provider/home/get_data_list.dart';
import 'package:marketplace/provider/home/get_data_people.dart';

class HomeProvider extends ChangeNotifier with GetDataList, GetDataPeople {
  HomeProvider() {
    getDataBanner();
    getDataTopList();
    getDataPeople();
  }

  // ----------- BANNER -------------------

  List<Image> _listBanner = [];
  List<Image> get listBanner => _listBanner;

  getDataBanner() {
    var dataBanner = [
      Image.asset('assets/images/banner1.png'),
      Image.asset('assets/images/banner2.png'),
      Image.asset('assets/images/banner3.png'),
      Image.asset('assets/images/banner4.png'),
    ];

    _listBanner = dataBanner;
    notifyListeners();
  }

  // ------------ PAGE BANNER --------------

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;

  changePageIndex({required int index}) {
    _pageIndex = index;
    notifyListeners();
  }
}
