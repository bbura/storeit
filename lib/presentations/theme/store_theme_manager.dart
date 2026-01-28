import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/store_color_palette.dart';
import 'package:storeit/presentations/theme/store_icon_tokens.dart';
import 'package:storeit/presentations/theme/store_layout_tokens.dart';
import 'package:storeit/presentations/theme/store_text_tokens.dart';
import 'package:storeit/presentations/theme/store_theme.dart';

class StoreThemeManager {
  static ThemeData build(StoreTheme t, {bool dark = false}) {
    final c = t.colors;
    final l = t.layout;
    final txt = t.text;
    final ic = t.icons;

    return ThemeData(
      useMaterial3: true,
      brightness: dark ? Brightness.dark : Brightness.light,

      scaffoldBackgroundColor: c.background[100],
      dividerColor: c.border[30],

      iconTheme: IconThemeData(color: ic.defaultColor, size: ic.sizeMd),

      colorScheme: ColorScheme(
        brightness: dark ? Brightness.dark : Brightness.light,
        primary: c.primary[50],
        onPrimary: c.background[100],
        secondary: c.secondary[50],
        onSecondary: c.background[100],
        error: c.error[50],
        onError: c.background[100],
        background: c.background[100],
        onBackground: c.text[90],
        surface: c.surface[100],
        onSurface: c.text[90],
      ),

      textTheme: TextTheme(
        displayLarge: txt.displayLg.copyWith(color: c.text[95]),
        displayMedium: txt.displayMd.copyWith(color: c.text[95]),
        displaySmall: txt.displaySm.copyWith(color: c.text[95]),
        headlineLarge: txt.headlineLg.copyWith(color: c.text[90]),
        headlineMedium: txt.headlineMd.copyWith(color: c.text[90]),
        headlineSmall: txt.headlineSm.copyWith(color: c.text[90]),
        titleLarge: txt.titleLg.copyWith(color: c.text[85]),
        titleMedium: txt.titleMd.copyWith(color: c.text[85]),
        titleSmall: txt.titleSm.copyWith(color: c.text[85]),
        bodyLarge: txt.bodyLg.copyWith(color: c.text[80]),
        bodyMedium: txt.bodyMd.copyWith(color: c.text[80]),
        bodySmall: txt.bodySm.copyWith(color: c.text[70]),
        labelLarge: txt.labelLg.copyWith(color: c.text[80]),
        labelMedium: txt.labelMd.copyWith(color: c.text[80]),
        labelSmall: txt.labelSm.copyWith(color: c.text[80]),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: c.surface[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(l.radiusMd),
          borderSide: BorderSide(color: c.border[40]),
        ),
      ),
    );
  }

  static final light = StoreTheme(
    colors: AppColorPalette(
      // Primary sage green used for CTAs, highlights
      primary: ColorScale.fromBase(const Color(0xFF7FAF9B)),

      // Secondary warm cream for cards / accents
      secondary: ColorScale.fromBase(const Color(0xFFF3F1EC)),

      // Accent soft terracotta (used sparingly)
      accent: ColorScale.fromBase(const Color(0xFFD9A441)),

      // Main app background
      background: ColorScale.fromBase(const Color(0xFFF8F7F4)),

      // Card / sheet background
      surface: ColorScale.fromBase(const Color(0xFFEDEFEA)),

      // Borders & dividers
      border: ColorScale.fromBase(const Color(0xFFD6DBD5)),

      // Primary text color
      text: ColorScale.fromBase(const Color(0xFF2F3E37)),

      // Icons default to green
      icon: ColorScale.fromBase(const Color(0xFF7FAF9B)),

      // Feedback colors
      success: ColorScale.fromBase(const Color(0xFF5FB38E)),
      warning: ColorScale.fromBase(const Color(0xFFE2B94F)),
      error: ColorScale.fromBase(const Color(0xFFD16666)),
      info: ColorScale.fromBase(const Color(0xFF7FAF9B)),
    ),

    icons: const AppIconTokens(
      defaultColor: Color(0xFF7FAF9B),
      activeColor: Color(0xFF5FB38E),
      disabledColor: Color(0xFFA8B8B1),
      sizeSm: 16,
      sizeMd: 24,
      sizeLg: 32,
      sizeXl: 40,
    ),

    layout: const AppLayoutTokens(
      radiusXs: 4,
      radiusSm: 8,
      radiusMd: 14,
      radiusLg: 20,
      radiusXl: 28,
      radius2Xl: 36,
      radiusFull: 999,

      space2Xs: 4,
      spaceXs: 6,
      spaceSm: 10,
      spaceMd: 16,
      spaceLg: 24,
      spaceXl: 32,
      space2Xl: 40,
      space3Xl: 64,

      sizeSm: 32,
      sizeMd: 48,
      sizeLg: 64,
      sizeXl: 96,
    ),

    text: const AppTextTokens(
      fontFamily: 'Roboto',

      displayLg: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w700,
        color: Color(0xFF2F3E37),
      ),
      displayMd: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: Color(0xFF2F3E37),
      ),
      displaySm: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2F3E37),
      ),

      headlineLg: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2F3E37),
      ),
      headlineMd: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2F3E37),
      ),
      headlineSm: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2F3E37),
      ),

      titleLg: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF3A4A42),
      ),
      titleMd: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF3A4A42),
      ),
      titleSm: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF3A4A42),
      ),

      bodyLg: TextStyle(fontSize: 16, color: Color(0xFF5C6F66)),
      bodyMd: TextStyle(fontSize: 14, color: Color(0xFF5C6F66)),
      bodySm: TextStyle(fontSize: 12, color: Color(0xFF5C6F66)),

      labelLg: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF7FAF9B),
      ),
      labelMd: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color(0xFF7FAF9B),
      ),
      labelSm: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Color(0xFF7FAF9B),
      ),
    ),
  );

  static final dark = StoreTheme(
    colors: AppColorPalette(
      // Primary sage green (still brand anchor)
      primary: ColorScale.fromBase(const Color(0xFF8FC3AC)),

      // Secondary used for subtle highlights, chips
      secondary: ColorScale.fromBase(const Color(0xFF3A4A43)),

      // Accent terracotta / amber
      accent: ColorScale.fromBase(const Color(0xFFE0B85C)),

      // Main dark background
      background: ColorScale.fromBase(const Color(0xFF121916)),

      // Card / sheet background
      surface: ColorScale.fromBase(const Color(0xFF1B2420)),

      // Borders & dividers
      border: ColorScale.fromBase(const Color(0xFF2E3A35)),

      // Primary text
      text: ColorScale.fromBase(const Color(0xFFE6EFEA)),

      // Icon color
      icon: ColorScale.fromBase(const Color(0xFF8FC3AC)),

      // Feedback colors (slightly softened for dark bg)
      success: ColorScale.fromBase(const Color(0xFF6BCFA6)),
      warning: ColorScale.fromBase(const Color(0xFFE0B85C)),
      error: ColorScale.fromBase(const Color(0xFFE07A7A)),
      info: ColorScale.fromBase(const Color(0xFF8FC3AC)),
    ),

    icons: const AppIconTokens(
      defaultColor: Color(0xFF8FC3AC),
      activeColor: Color(0xFF6BCFA6),
      disabledColor: Color(0xFF4A5C55),
      sizeSm: 16,
      sizeMd: 24,
      sizeLg: 32,
      sizeXl: 40,
    ),

    layout: const AppLayoutTokens(
      radiusXs: 4,
      radiusSm: 8,
      radiusMd: 14,
      radiusLg: 20,
      radiusXl: 28,
      radius2Xl: 36,
      radiusFull: 999,

      space2Xs: 4,
      spaceXs: 6,
      spaceSm: 10,
      spaceMd: 16,
      spaceLg: 24,
      spaceXl: 32,
      space2Xl: 40,
      space3Xl: 64,

      sizeSm: 32,
      sizeMd: 48,
      sizeLg: 64,
      sizeXl: 96,
    ),

    text: const AppTextTokens(
      fontFamily: 'Roboto',

      displayLg: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w700,
        color: Color(0xFFE6EFEA),
      ),
      displayMd: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: Color(0xFFE6EFEA),
      ),
      displaySm: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE6EFEA),
      ),

      headlineLg: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE6EFEA),
      ),
      headlineMd: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE6EFEA),
      ),
      headlineSm: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE6EFEA),
      ),

      titleLg: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFFCBD9D3),
      ),
      titleMd: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFCBD9D3),
      ),
      titleSm: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFCBD9D3),
      ),

      bodyLg: TextStyle(fontSize: 16, color: Color(0xFF9FB3AA)),
      bodyMd: TextStyle(fontSize: 14, color: Color(0xFF9FB3AA)),
      bodySm: TextStyle(fontSize: 12, color: Color(0xFF9FB3AA)),

      labelLg: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF8FC3AC),
      ),
      labelMd: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color(0xFF8FC3AC),
      ),
      labelSm: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Color(0xFF8FC3AC),
      ),
    ),
  );
}
