import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

import '../../../widget/stars_widget.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defPadding),
      child: Row(
        children: [
          Container(
            height: 104,
            width: 104,
            alignment: Alignment.center,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defBorderRadius),
              border: Border.all(
                color: const Color(0xFFCECECE),
              ),
            ),
            child: Image.asset(
              'assets/images/product_reizen.png',
              width: 94,
              height: 81,
            ),
          ),
          SizedBox(width: defPadding),
          SizedBox(
            width: 187,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  style: TextStyle(fontSize: 14),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'AMD 라이젠 5 ',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: ' 5600X 버미어정품 멀티팩',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: defPadding / 2),
                Row(
                  children: [
                    const StarsWidget(
                      size: 21,
                    ),
                    SizedBox(width: defPadding / 2),
                    const Text(
                      '4.07',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
