import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  popupMenuTheme: const PopupMenuThemeData(
    surfaceTintColor: Colors.white,
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: defPadding),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(defBorderRadius),
    ),
  ),
);
