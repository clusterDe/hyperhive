import 'package:flutter/material.dart';

import '../../../constant.dart';

class SearchBardSection extends StatelessWidget {
  const SearchBardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defPadding),
        child: Container(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defBorderRadius),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF74FBDE),
                Color(0xFF3C41BF),
              ],
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(defBorderRadius),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: '검색어를 입력하세요',
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF3E3DC5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
