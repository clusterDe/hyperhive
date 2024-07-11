import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/screen/home/home_screen.dart';
import 'package:marketplace/screen/page2/page2_screen.dart';
import 'package:marketplace/screen/page3/page3_screen.dart';
import 'package:marketplace/screen/profile/profile_screen.dart';

class DashboardProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  changeIndex({required int newVal}) {
    _currentIndex = newVal;
    notifyListeners();
  }

  onTap(BuildContext context, int index) {
    changeIndex(newVal: index);

    switch (index) {
      case 0:
        context.goNamed(HomeScreen.routeName);
        break;
      case 1:
        context.goNamed(Page2Screen.routeName);
        break;
      case 2:
        context.goNamed(Page3Screen.routeName);
        break;
      case 3:
        context.goNamed(ProfileScreen.routeName);
        break;
    }
  }
}
