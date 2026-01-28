import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/store_color_palette.dart';
import 'package:storeit/presentations/theme/store_icon_tokens.dart';
import 'package:storeit/presentations/theme/store_layout_tokens.dart';
import 'package:storeit/presentations/theme/store_text_tokens.dart';
import 'package:storeit/presentations/theme/store_theme.dart';
import 'package:storeit/presentations/theme/store_theme_manager.dart';

extension StoreThemeContext on BuildContext {
  // Determine if dark mode
  bool get _isDark => Theme.of(this).brightness == Brightness.dark;

  // Get tokens directly from ThemePresets
  StoreTheme get stTheme =>
      _isDark ? StoreThemeManager.dark : StoreThemeManager.light;

  AppColorPalette get stColorPalette => stTheme.colors;

  AppTextTokens get stText => stTheme.text;

  AppIconTokens get stIcons => stTheme.icons;

  AppLayoutTokens get stSizes => stTheme.layout;
}
