import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: defPadding),
              Image.asset(
                'assets/icons/comment_icon.png',
                scale: 4,
              ),
              SizedBox(width: defPadding),
              Expanded(
                child: Text(
                  '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                  style: TextStyle(
                    fontWeight: FontWeight.lerp(
                      FontWeight.w300,
                      FontWeight.w300,
                      350,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: defPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: defPadding),
              Image.asset(
                'assets/icons/comment_icon.png',
                scale: 4,
                color: const Color(0xFFD7D7D7),
              ),
              SizedBox(width: defPadding),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                      style: TextStyle(
                        fontWeight: FontWeight.lerp(
                          FontWeight.w300,
                          FontWeight.w300,
                          350,
                        ),
                      ),
                    ),
                    SizedBox(height: defPadding),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: 10,
                        runSpacing: defPadding,
                        children: [
                          SizedBox(
                            width: 73,
                            height: 70,
                            child: Image.asset(
                              'assets/images/product_comment1.png',
                              scale: 4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 73,
                            height: 70,
                            child: Image.asset(
                              'assets/images/product_comment2.png',
                              scale: 4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 73,
                            height: 70,
                            child: Image.asset(
                              'assets/images/product_comment3.png',
                              scale: 4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
