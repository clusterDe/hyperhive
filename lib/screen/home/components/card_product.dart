// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketplace/extension/bullet.dart';

import '../../../constant.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    this.image,
    this.crown,
    this.merk,
    this.title,
    this.subTitle,
    this.star,
    this.sold,
    this.category,
  });

  final String? image;
  final String? crown;
  final String? merk;
  final String? title;
  final List<String>? subTitle;
  final String? star;
  final String? sold;
  final List<String>? category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 104,
          width: 104,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defBorderRadius),
            border: Border.all(
              color: const Color(0xFFCECECE),
            ),
          ),
          child: Builder(
            builder: (context) {
              if (image != null) {
                return Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned.fill(
                      top: defPadding / 2,
                      child: Image.asset(
                        '$image',
                        scale: 4,
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (crown != null) {
                          return Positioned.fill(
                            top: 6,
                            left: 6,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                '$crown',
                                scale: 4,
                              ),
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                );
              } else {
                return const Icon(Icons.error_outline);
              }
            },
          ),
        ),
        SizedBox(width: defPadding / 2),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$merk ',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: '$title',
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
              Builder(
                builder: (context) {
                  if (subTitle != null) {
                    return UnorderedList(
                      subTitle!,
                      12,
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFFD233),
                    size: 14,
                  ),
                  SizedBox(width: defPadding / 3),
                  Text(
                    '$star',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFD233),
                    ),
                  ),
                  SizedBox(width: defPadding / 3),
                  Text(
                    '($sold)',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
              Builder(
                builder: (context) {
                  if (category != null) {
                    return Row(
                      children: List.generate(
                        category!.length,
                        (index) => Container(
                          padding: EdgeInsets.all(defPadding / 5),
                          margin: EdgeInsets.only(right: defPadding / 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F0F0),
                            borderRadius:
                                BorderRadius.circular(defBorderRadius),
                          ),
                          child: Text(
                            '${category?[index]}',
                            style: const TextStyle(
                              fontSize: 11,
                              color: Color(0xFF868686),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
