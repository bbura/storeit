import 'package:storeit/presentations/theme/store_color_scale.dart';

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
