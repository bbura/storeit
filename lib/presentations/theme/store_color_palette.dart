import 'package:flutter/cupertino.dart';

class AppColorPalette {
  const AppColorPalette({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.background,
    required this.surface,
    required this.border,
    required this.text,
    required this.icon,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
  });

  // Brand
  final ColorScale primary;
  final ColorScale secondary;
  final ColorScale accent;

  // UI
  final ColorScale background;
  final ColorScale surface;
  final ColorScale border;

  // Text Colors
  final ColorScale text;

  // Icons
  final ColorScale icon;

  // Status
  final ColorScale success;
  final ColorScale warning;
  final ColorScale error;
  final ColorScale info;
}

class ColorScale {
  const ColorScale(this.shades, this.base);

  factory ColorScale.fromBase(Color base) {
    final hsl = HSLColor.fromColor(base);
    final result = <int, Color>{};

    for (var i = 5; i <= 100; i += 5) {
      final lightness = (1 - (i / 100)).clamp(0.05, 0.95);
      result[i] = hsl.withLightness(lightness).toColor();
    }

    return ColorScale(result, base);
  }

  final Map<int, Color> shades;
  final Color base;

  Color operator [](int value) => shades[value] ?? base;
}
