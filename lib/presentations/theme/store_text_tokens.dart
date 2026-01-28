import 'package:flutter/material.dart';

class AppTextTokens {
  const AppTextTokens({
    required this.displayLg,
    required this.displayMd,
    required this.displaySm,
    required this.headlineLg,
    required this.headlineMd,
    required this.headlineSm,
    required this.titleLg,
    required this.titleMd,
    required this.titleSm,
    required this.bodyLg,
    required this.bodyMd,
    required this.bodySm,
    required this.labelLg,
    required this.labelMd,
    required this.labelSm,
    required this.fontFamily,
  });

  final String? fontFamily;

  final TextStyle displayLg;
  final TextStyle displayMd;
  final TextStyle displaySm;

  final TextStyle headlineLg;
  final TextStyle headlineMd;
  final TextStyle headlineSm;

  final TextStyle titleLg;
  final TextStyle titleMd;
  final TextStyle titleSm;

  final TextStyle bodyLg;
  final TextStyle bodyMd;
  final TextStyle bodySm;

  final TextStyle labelLg;
  final TextStyle labelMd;
  final TextStyle labelSm;
}
