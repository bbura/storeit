import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/design/store_color_palette.dart';
import 'package:storeit/presentations/theme/design/store_size_tokens.dart';
import 'package:storeit/presentations/theme/store_theme_manager.dart';
import 'package:storeit/presentations/theme/store_theme_schema.dart';

extension StoreThemeContext on BuildContext {
  // Determine if dark mode
  bool get _isDark => Theme.of(this).brightness == Brightness.dark;

  // Get tokens directly from ThemePresets
  StoreThemeSchema get stTheme =>
      _isDark ? StoreThemeManager.dark : StoreThemeManager.light;

  AppColorPalette get stColorPalette => stTheme.colors;

  /// Shortcut to all sizing tokens (text, icons, layout)
  StoreSizeTokens get stSizes => stTheme.sizes;
}
