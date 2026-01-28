import 'package:flutter/material.dart';

class ColorScale {
  const ColorScale(this.shades);

  factory ColorScale.fromBase(Color base) {
    final hsl = HSLColor.fromColor(base);
    final result = <int, Color>{};

    for (var i = 5; i <= 100; i += 5) {
      final lightness = (1 - (i / 100)).clamp(0.05, 0.95);
      result[i] = hsl.withLightness(lightness).toColor();
    }
    return ColorScale(result);
  }

  final Map<int, Color> shades;

  Color operator [](int value) => shades[value]!;
}
