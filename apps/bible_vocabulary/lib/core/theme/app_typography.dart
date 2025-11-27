import 'package:flutter/material.dart';

abstract class AppTypography {
  // Word card - large display word
  static const TextStyle wordDisplay = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    height: 1.1,
  );

  // IPA pronunciation
  static const TextStyle ipaStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    fontStyle: FontStyle.italic,
  );

  // Korean meaning
  static const TextStyle koreanMeaning = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  // Korean pronunciation
  static const TextStyle koreanPronunciation = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Section headers
  static const TextStyle sectionHeader = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  // Body text for sentences
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // Bible reference
  static const TextStyle bibleReference = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  // Menu card title
  static const TextStyle menuTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  // Menu card subtitle
  static const TextStyle menuSubtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.3,
  );
}
