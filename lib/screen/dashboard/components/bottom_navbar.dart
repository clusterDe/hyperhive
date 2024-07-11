import 'package:flutter/material.dart';
import 'package:marketplace/provider/dashboard/dashboard_provider.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  homeIcon(BuildContext context, Color? color) {
    return Image.asset('assets/icons/home.png', scale: 4, color: color);
  }

  page2(BuildContext context, Color? color) {
    return Image.asset('assets/icons/page2.png', scale: 4, color: color);
  }

  page3(BuildContext context, Color? color) {
    return Image.asset(
      'assets/icons/page3.png',
      scale: 4,
      color: color,
    );
  }

  profileIcon(BuildContext context, Color? color) {
    return Image.asset(
      'assets/icons/profile.png',
      scale: 4,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
      builder: (context, dashboardProv, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: dashboardProv.currentIndex,
          selectedFontSize: 12,
          selectedItemColor: Colors.black,
          onTap: (value) {
            dashboardProv.onTap(context, value);
          },
          items: [
            BottomNavigationBarItem(
              icon: homeIcon(context, Colors.grey),
              activeIcon: homeIcon(context, Colors.black),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: page2(context, Colors.grey),
              activeIcon: page2(context, Colors.black),
              label: '카테고리',
            ),
            BottomNavigationBarItem(
              icon: page3(context, Colors.grey),
              activeIcon: page3(context, Colors.black),
              label: '커뮤니티',
            ),
            BottomNavigationBarItem(
              icon: profileIcon(context, Colors.grey),
              activeIcon: profileIcon(context, Colors.black),
              label: '마이페이지',
            ),
          ],
        );
      },
    );
  }
}
