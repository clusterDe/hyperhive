import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';

class InputComment extends StatelessWidget {
  const InputComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defPadding),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: defPadding),
            prefixIcon: Image.asset(
              'assets/icons/input_comment_icon.png',
              scale: 4,
            ),
            hintText: '댓글 달기..',
            hintStyle: const TextStyle(fontSize: 10),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
