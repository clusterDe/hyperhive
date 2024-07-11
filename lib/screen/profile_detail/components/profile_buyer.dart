import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/provider/profile_detail/profile_detail_provider.dart';
import 'package:marketplace/widget/stars_widget.dart';
import 'package:provider/provider.dart';

class ProfileBuyer extends StatelessWidget {
  const ProfileBuyer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defPadding),
      child: Row(
        children: [
          Consumer<ProfileDetailProvider>(
            builder: (context, profileProv, _) {
              var dataPeople = profileProv.dataPeople;

              if (dataPeople != null) {
                return Container(
                  width: 34,
                  height: 34,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    '${dataPeople.image}',
                    fit: BoxFit.cover,
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          SizedBox(width: defPadding / 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<ProfileDetailProvider>(
                builder: (context, profileProv, _) {
                  var dataPeople = profileProv.dataPeople;
                  return Text(
                    dataPeople?.name ?? '-',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  );
                },
              ),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StarsWidget(
                    size: 11,
                  ),
                  Text(
                    '2022.12.09',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF868686),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.bookmark_border,
            color: Color(0xFF868686),
          ),
        ],
      ),
    );
  }
}
