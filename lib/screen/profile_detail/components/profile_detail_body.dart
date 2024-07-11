import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

import 'detail_product_section.dart';
import 'image_and_name_section.dart';

class ProfileDetailBody extends StatelessWidget {
  const ProfileDetailBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        const ImageAndNameSection(),
        Divider(
          color: const Color(0xFFF0F0F0),
          thickness: 14,
          height: defPadding * 3,
        ),
        const DetailProductSection(),
      ],
    );
  }
}
