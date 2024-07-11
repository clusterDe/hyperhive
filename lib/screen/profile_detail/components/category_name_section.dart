import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

class CategoryNameSection extends StatelessWidget {
  const CategoryNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: defPadding),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: defPadding),
              child: const Text(
                '“가격 저렴해요”',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFA0A0A0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: defPadding),
              child: const Text(
                '“CPU온도 고온”',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFA0A0A0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: defPadding),
              child: const Text(
                '“서멀작업 가능해요”',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFA0A0A0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: defPadding),
              child: const Text(
                '“게임 잘 돌아가요”',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFA0A0A0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: defPadding),
              child: const Text(
                '“발열이 적어요”',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFA0A0A0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
