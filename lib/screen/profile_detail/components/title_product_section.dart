import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitleProductSection extends StatelessWidget {
  const TitleProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                '작성한 리뷰',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: defPadding / 2),
              const Text(
                '총 35개',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
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
              children: [
                const Text(
                  '최신순',
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
          ),
        ],
      ),
    );
  }
}
