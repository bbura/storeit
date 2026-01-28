import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/store_theme.dart';

class ThemeEngine {
  static ThemeData build(AppThemeTokens t, {bool dark = false}) {
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
}
