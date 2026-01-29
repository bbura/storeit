import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/design/store_color_palette.dart';
import 'package:storeit/presentations/theme/design/store_gradients.dart';
import 'package:storeit/presentations/theme/design/store_size_tokens.dart';
import 'package:storeit/presentations/theme/store_theme_manager.dart';
import 'package:storeit/presentations/theme/store_theme_schema.dart';

extension StoreThemeContext on BuildContext {
  // Determine if dark mode
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  // Get tokens directly from ThemePresets
  StoreThemeSchema get _stTheme =>
      isDark ? StoreThemeManager.dark : StoreThemeManager.light;

  AppColorPalette get stColorPalette => _stTheme.colors;

  /// Shortcut to all sizing tokens (text, icons, layout)
  StoreSizeTokens get stSizes => _stTheme.sizes;

  /// Shortcut to all theme gradients
  StoreGradients get stGradients => _stTheme.gradients;
}
