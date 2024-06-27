import 'package:flutter/material.dart';

// Class practice with custom theme
class CustomTheme {
  final Color scaffoldColor;
  final Color textColor;
  final bool material3;
  final Color displayColor;
  final Color displayTextColor;

  CustomTheme(
      {required this.scaffoldColor,
      required this.textColor,
      required this.material3,
      required this.displayColor,
      required this.displayTextColor});
}

final CustomTheme customTheme = CustomTheme(
    scaffoldColor: Colors.white,
    textColor: Colors.black,
    material3: false,
    displayColor: Colors.black,
    displayTextColor: Colors.white);
