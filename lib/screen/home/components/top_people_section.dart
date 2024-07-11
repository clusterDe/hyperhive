import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/provider/home/home_provider.dart';
import 'package:marketplace/screen/profile_detail/profile_detail_screen.dart';
import 'package:provider/provider.dart';

import 'card_people.dart';

class TopPeopleSection extends StatelessWidget {
  const TopPeopleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defPadding),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '골드 계급 사용자들이예요',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                '베스트 리뷰어 🏆 Top10',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: defPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: defPadding),
            child: Consumer<HomeProvider>(
              builder: (context, homeProv, _) {
                var listPeople = homeProv.listPeople;

                if (listPeople.isNotEmpty) {
                  return Row(
                    children: [
                      ...List.generate(
                        listPeople.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: defPadding),
                          child: CardPeople(
                            press: () {
                              context.goNamed(
                                ProfileDetailScreen.routeName,
                                extra: listPeople[index],
                              );
                            },
                            crown: listPeople[index].crown,
                            image: listPeople[index].image,
                            name: listPeople[index].name,
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
