import 'package:flutter/material.dart';

import 'components/profile_detail_body.dart';

class ProfileDetailScreen extends StatelessWidget {
  static const String routeName = 'profile_detail';
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '랭킹 1위',
              style: TextStyle(
                fontSize: 10,
                color: Color(0xFF868686),
              ),
            ),
            Text(
              '베스트 리뷰어',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: const ProfileDetailBody(),
    );
  }
}
