import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/provider/profile_detail/profile_detail_provider.dart';
import 'package:provider/provider.dart';

class ImageAndNameSection extends StatelessWidget {
  const ImageAndNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defPadding),
      child: Column(
        children: [
          Consumer<ProfileDetailProvider>(
            builder: (context, profileProv, _) {
              var dataPeople = profileProv.dataPeople;

              return Container(
                height: 120,
                width: 120,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Builder(
                  builder: (context) {
                    if (dataPeople != null) {
                      return Image.asset(
                        '${dataPeople.image}',
                        fit: BoxFit.cover,
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              );
            },
          ),
          SizedBox(height: defPadding),
          Consumer<ProfileDetailProvider>(
            builder: (context, profileProv, _) {
              return Text(
                profileProv.dataPeople?.name ?? '-',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
          SizedBox(height: defPadding / 2),
          Consumer<ProfileDetailProvider>(
            builder: (context, profileProv, _) {
              var dataPeople = profileProv.dataPeople;

              if (dataPeople?.crown != null) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      '${dataPeople?.crown}',
                      scale: 4,
                    ),
                    SizedBox(width: defPadding / 2),
                    const Text(
                      '골드',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFD233),
                      ),
                    ),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          SizedBox(height: defPadding * 1.5),
          Container(
            padding: EdgeInsets.all(defPadding / 2),
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
            ),
            child: const Text(
              '조립컴 업체를 운영하며 리뷰를 작성합니다.',
              style: TextStyle(
                color: Color(0xFF868686),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
