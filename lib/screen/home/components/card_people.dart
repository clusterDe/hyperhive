// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketplace/constant.dart';

class CardPeople extends StatelessWidget {
  const CardPeople({
    super.key,
    this.press,
    this.image,
    this.crown,
    this.name,
  });

  final VoidCallback? press;
  final String? image;
  final String? crown;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(defBorderRadius),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const SizedBox(
                height: 106,
              ),
              Builder(
                builder: (context) {
                  if (crown != null) {
                    return Container(
                      height: 66,
                      width: 66,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFD233),
                        shape: BoxShape.circle,
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              Container(
                height: 62,
                width: 62,
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('$image'),
                    fit: BoxFit.cover,
                  ),
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
          ),
          Text(
            '$name',
            style: const TextStyle(
              color: Color(0xFF616161),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
