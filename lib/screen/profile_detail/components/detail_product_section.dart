import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

import 'category_name_section.dart';
import 'comments_section.dart';
import 'input_comment.dart';
import 'product_section.dart';
import 'profile_buyer.dart';
import 'title_product_section.dart';

class DetailProductSection extends StatelessWidget {
  const DetailProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleProductSection(),
        SizedBox(height: defPadding * 2),
        const ProductSection(),
        Divider(
          color: const Color(0xFFF0F0F0),
          height: defPadding * 2.5,
          indent: defPadding,
          endIndent: defPadding,
        ),
        const ProfileBuyer(),
        SizedBox(height: defPadding * 2),
        const CategoryNameSection(),
        SizedBox(height: defPadding * 2),
        const CommentsSection(),
        Divider(
          color: const Color(0xFFF0F0F0),
          height: defPadding * 2.5,
          indent: defPadding,
          endIndent: defPadding,
        ),
        const InputComment(),
        Container(
          height: 14,
          decoration: const BoxDecoration(
            color: Color(0xFFF0F0F0),
          ),
        ),
      ],
    );
  }
}
