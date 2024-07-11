import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF0F0F0),
      ),
      child: Padding(
        padding: EdgeInsets.all(defPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'LOGO Inc.',
              style: TextStyle(
                color: Color(0xFF868686),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: defPadding * 1.5),
            SizedBox(
              height: 19,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '회사 소개',
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  VerticalDivider(
                    width: defPadding,
                    color: const Color(0xFFC8C8C8),
                  ),
                  const Text(
                    '인재 채용',
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  VerticalDivider(
                    width: defPadding,
                    color: const Color(0xFFC8C8C8),
                  ),
                  const Text(
                    '기술 블로그',
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  VerticalDivider(
                    width: defPadding,
                    color: const Color(0xFFC8C8C8),
                  ),
                  const Text(
                    '리뷰 저작권',
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: defPadding * 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.send,
                      color: Color(0xFFC8C8C8),
                    ),
                    SizedBox(width: defPadding / 2),
                    const Text(
                      'review@logo.com',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF868686),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defPadding / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defBorderRadius),
                    border: Border.all(
                      color: const Color(0xFF868686),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'KOR',
                        style: TextStyle(
                          color: Color(0xFF868686),
                        ),
                      ),
                      SizedBox(width: defPadding / 2),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF868686),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              height: defPadding * 3,
              color: const Color(0xFFC8C8C8),
            ),
            const Text(
              '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: defPadding / 2),
          ],
        ),
      ),
    );
  }
}
