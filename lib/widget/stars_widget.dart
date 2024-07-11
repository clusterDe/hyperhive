// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: const Color(0xFFFFD233),
          size: size,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFFFD233),
          size: size,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFFFD233),
          size: size,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFFFD233),
          size: size,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFF0F0F0),
          size: size,
        ),
      ],
    );
  }
}
