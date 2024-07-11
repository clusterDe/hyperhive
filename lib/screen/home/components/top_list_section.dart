import 'package:flutter/material.dart';
import 'package:marketplace/provider/home/home_provider.dart';
import 'package:provider/provider.dart';

import '../../../constant.dart';
import 'card_product.dart';

class TopListSection extends StatelessWidget {
  const TopListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defPadding,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '제일 핫한 리뷰를 만나보세요',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF616161),
                    ),
                  ),
                  Text(
                    '리뷰️  랭킹⭐ top 3',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF616161),
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
              ),
            ],
          ),
        ),
        SizedBox(height: defPadding * 2),
        Consumer<HomeProvider>(
          builder: (context, homeProv, _) {
            var listTop = homeProv.listTop;

            if (listTop.isNotEmpty) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: defPadding),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listTop.length,
                itemBuilder: (context, index) {
                  return CardProduct(
                    crown: listTop[index].crown,
                    image: listTop[index].image,
                    merk: listTop[index].merk,
                    title: listTop[index].title,
                    subTitle: listTop[index].subTitle,
                    star: listTop[index].stars,
                    sold: listTop[index].sold,
                    category: listTop[index].category,
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: defPadding),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}
