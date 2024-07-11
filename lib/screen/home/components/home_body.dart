import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

import 'banner_section.dart';
import 'bottom_section.dart';
import 'top_list_section.dart';
import 'top_people_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        const BannerSection(),
        const TopListSection(),
        Divider(
          height: defPadding * 4,
          thickness: 14,
          color: const Color(0xFFF0F0F0),
        ),
        const TopPeopleSection(),
        SizedBox(height: defPadding * 2),
        const BottomSection(),
      ],
    );
  }
}
