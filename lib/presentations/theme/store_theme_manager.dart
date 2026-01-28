import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/design/store_color_palette.dart';
import 'package:storeit/presentations/theme/design/store_icon_tokens.dart';
import 'package:storeit/presentations/theme/design/store_layout_tokens.dart';
import 'package:storeit/presentations/theme/design/store_size_tokens.dart';
import 'package:storeit/presentations/theme/design/store_text_tokens.dart';
import 'package:storeit/presentations/theme/store_theme_schema.dart';

class StoreThemeManager {
  static ThemeData build(StoreThemeSchema t, {bool dark = false}) {
    final palette = t.colors;
    final size = t.sizes;
    final layout = size.layout;
    final text = size.text;
    final icons = size.icons;

    final brightness = dark ? Brightness.dark : Brightness.light;

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,

      // ===============================
      // Core Surfaces
      // ===============================
      scaffoldBackgroundColor: palette.background.base,
      canvasColor: palette.background.base,
      dividerColor: palette.divider.base,

      // ===============================
      // Color Scheme (Material 3)
      // ===============================
      colorScheme: ColorScheme(
        brightness: brightness,

        primary: palette.primary.base,
        onPrimary: palette.primary.contrast,

        secondary: palette.secondary.base,
        onSecondary: palette.secondary.contrast,

        error: palette.error.base,
        onError: palette.error.contrast,

        background: palette.background.base,
        onBackground: palette.text.primary,

        surface: palette.surface.base,
        onSurface: palette.text.primary,
      ),

      // ===============================
      // Icons
      // ===============================
      iconTheme: IconThemeData(color: palette.icon.primary, size: icons.sizeMd),

      // ===============================
      // Text Theme
      // ===============================
      textTheme: TextTheme(
        displayLarge: text.displayLg.copyWith(color: palette.text.primary),
        displayMedium: text.displayMd.copyWith(color: palette.text.primary),
        displaySmall: text.displaySm.copyWith(color: palette.text.primary),

        headlineLarge: text.headlineLg.copyWith(color: palette.text.primary),
        headlineMedium: text.headlineMd.copyWith(color: palette.text.primary),
        headlineSmall: text.headlineSm.copyWith(color: palette.text.primary),

        titleLarge: text.titleLg.copyWith(color: palette.text.primary),
        titleMedium: text.titleMd.copyWith(color: palette.text.primary),
        titleSmall: text.titleSm.copyWith(color: palette.text.secondary),

        bodyLarge: text.bodyLg.copyWith(color: palette.text.primary),
        bodyMedium: text.bodyMd.copyWith(color: palette.text.secondary),
        bodySmall: text.bodySm.copyWith(color: palette.text.tertiary),

        labelLarge: text.labelLg.copyWith(color: palette.text.primary),
        labelMedium: text.labelMd.copyWith(color: palette.text.secondary),
        labelSmall: text.labelSm.copyWith(color: palette.text.tertiary),
      ),

      // ===============================
      // Inputs
      // ===============================
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: palette.surface.base,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(layout.radiusMd),
          borderSide: BorderSide(color: palette.border.base),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(layout.radiusMd),
          borderSide: BorderSide(color: palette.border.base),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(layout.radiusMd),
          borderSide: BorderSide(color: palette.interaction.focus, width: 1.5),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(layout.radiusMd),
          borderSide: BorderSide(color: palette.error.base),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(layout.radiusMd),
          borderSide: BorderSide(color: palette.error.strong, width: 1.5),
        ),

        hintStyle: text.bodyMd.copyWith(color: palette.text.tertiary),
      ),

      // ===============================
      // Disabled / Interaction States
      // ===============================
      disabledColor: palette.interaction.disabled,

      splashColor: palette.interaction.pressed,
      hoverColor: palette.interaction.hover,
      focusColor: palette.interaction.focus.withOpacity(0.12),
    );
  }

  static const light = StoreThemeSchema(
    colors: AppColorPalette(
      // ===============================
      // Brand
      // ===============================
      primary: ColorScale(
        base: Color(0xFF8FB996),
        // Sage green
        subtle: Color(0xFFEAF4EC),
        muted: Color(0xFFBFDCC5),
        strong: Color(0xFF6FA07A),
        contrast: Color(0xFFFFFFFF),
      ),
      secondary: ColorScale(
        base: Color(0xFF6B9CA3),
        subtle: Color(0xFFE7F2F4),
        muted: Color(0xFFAACED3),
        strong: Color(0xFF4A7F86),
        contrast: Color(0xFFFFFFFF),
      ),
      accent: ColorScale(
        base: Color(0xFFF3C969),
        subtle: Color(0xFFFFF7E3),
        muted: Color(0xFFF8DFA0),
        strong: Color(0xFFD6A73E),
        contrast: Color(0xFF1F2933),
      ),

      // ===============================
      // Neutral Foundation
      // ===============================
      neutral: ColorScale(
        base: Color(0xFFFFFFFF),
        subtle: Color(0xFFF7F8F7),
        muted: Color(0xFFE3E5E3),
        strong: Color(0xFF3F4A44),
        contrast: Color(0xFF1F2D27),
      ),

      // ===============================
      // Surfaces
      // ===============================
      background: ColorScale(
        base: Color(0xFFF6F7F6),
        subtle: Color(0xFFFFFFFF),
        muted: Color(0xFFE8ECE9),
        strong: Color(0xFFD6DBD7),
        contrast: Color(0xFF1F2D27),
      ),
      surface: ColorScale(
        base: Color(0xFFFFFFFF),
        subtle: Color(0xFFF6F7F6),
        muted: Color(0xFFE3E5E3),
        strong: Color(0xFFD1D5D2),
        contrast: Color(0xFF1F2D27),
      ),
      surfaceRaised: ColorScale(
        base: Color(0xFFFFFFFF),
        subtle: Color(0xFFF9FAF9),
        muted: Color(0xFFE6EAE7),
        strong: Color(0xFFCBD3CE),
        contrast: Color(0xFF1F2D27),
      ),
      surfaceOverlay: ColorScale(
        base: Color(0xFFFFFFFF),
        subtle: Color(0xFFF2F4F3),
        muted: Color(0xFFD8DDD9),
        strong: Color(0xFFBFC7C2),
        contrast: Color(0xFF1F2D27),
      ),

      // ===============================
      // Borders & Dividers
      // ===============================
      border: ColorScale(
        base: Color(0xFFE3E5E3),
        subtle: Color(0xFFF0F2F1),
        muted: Color(0xFFD1D5D2),
        strong: Color(0xFFB3BAB6),
        contrast: Color(0xFF1F2D27),
      ),
      divider: ColorScale(
        base: Color(0xFFE6EAE7),
        subtle: Color(0xFFF2F4F3),
        muted: Color(0xFFD6DBD7),
        strong: Color(0xFFBFC7C2),
        contrast: Color(0xFF1F2D27),
      ),

      // ===============================
      // Content
      // ===============================
      text: ContentColors(
        primary: Color(0xFF1F2D27),
        secondary: Color(0xFF3F4A44),
        tertiary: Color(0xFF6B756F),
        disabled: Color(0xFFA0A8A3),
        inverse: Color(0xFFFFFFFF),
      ),
      icon: ContentColors(
        primary: Color(0xFF1F2D27),
        secondary: Color(0xFF6B756F),
        tertiary: Color(0xFFA0A8A3),
        disabled: Color(0xFFD1D5D2),
        inverse: Color(0xFFFFFFFF),
      ),

      // ===============================
      // Status
      // ===============================
      success: ColorScale(
        base: Color(0xFF4CAF50),
        subtle: Color(0xFFE8F5E9),
        muted: Color(0xFFA5D6A7),
        strong: Color(0xFF388E3C),
        contrast: Color(0xFFFFFFFF),
      ),
      warning: ColorScale(
        base: Color(0xFFF4B740),
        subtle: Color(0xFFFFF8E1),
        muted: Color(0xFFFFE082),
        strong: Color(0xFFD89A22),
        contrast: Color(0xFF1F2933),
      ),
      error: ColorScale(
        base: Color(0xFFE57373),
        subtle: Color(0xFFFDEAEA),
        muted: Color(0xFFF5B5B5),
        strong: Color(0xFFC62828),
        contrast: Color(0xFFFFFFFF),
      ),
      info: ColorScale(
        base: Color(0xFF6BAED6),
        subtle: Color(0xFFEAF4FB),
        muted: Color(0xFFA7CDE8),
        strong: Color(0xFF4A90C2),
        contrast: Color(0xFFFFFFFF),
      ),

      // ===============================
      // Interaction
      // ===============================
      interaction: InteractionColors(
        hover: Color(0x0D000000),
        pressed: Color(0x1A000000),
        focus: Color(0xFF6FA07A),
        selected: Color(0xFFEAF4EC),
        disabled: Color(0xFFF0F2F1),
      ),
    ),

    sizes: StoreSizeTokens(
      text: AppTextTokens(
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
      icons: AppIconTokens(sizeSm: 16, sizeMd: 24, sizeLg: 32, sizeXl: 40),
      layout: AppLayoutTokens(
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
    ),
  );

  static const dark = StoreThemeSchema(
    colors: AppColorPalette(
      // ===============================
      // Brand
      // ===============================
      primary: ColorScale(
        base: Color(0xFF8FB996),
        subtle: Color(0xFF1F2D27),
        muted: Color(0xFF5E8F6A),
        strong: Color(0xFFA7D3B0),
        contrast: Color(0xFF0F1A15),
      ),
      secondary: ColorScale(
        base: Color(0xFF7FB2B9),
        subtle: Color(0xFF1A2A2D),
        muted: Color(0xFF4F8C94),
        strong: Color(0xFF9ED0D6),
        contrast: Color(0xFF0F1A15),
      ),
      accent: ColorScale(
        base: Color(0xFFF3C969),
        subtle: Color(0xFF2A2415),
        muted: Color(0xFFD9B24F),
        strong: Color(0xFFFFE08A),
        contrast: Color(0xFF1A1405),
      ),

      // ===============================
      // Neutral Foundation
      // ===============================
      neutral: ColorScale(
        base: Color(0xFF0F1A15),
        subtle: Color(0xFF141F1A),
        muted: Color(0xFF1F2D27),
        strong: Color(0xFF8FA39B),
        contrast: Color(0xFFE6EFEA),
      ),

      // ===============================
      // Surfaces
      // ===============================
      background: ColorScale(
        base: Color(0xFF0F1A15),
        subtle: Color(0xFF141F1A),
        muted: Color(0xFF1F2D27),
        strong: Color(0xFF2C3F37),
        contrast: Color(0xFFE6EFEA),
      ),
      surface: ColorScale(
        base: Color(0xFF141F1A),
        subtle: Color(0xFF1A2620),
        muted: Color(0xFF24352E),
        strong: Color(0xFF324B41),
        contrast: Color(0xFFE6EFEA),
      ),
      surfaceRaised: ColorScale(
        base: Color(0xFF1A2620),
        subtle: Color(0xFF1F2D27),
        muted: Color(0xFF2C3F37),
        strong: Color(0xFF3D5A4E),
        contrast: Color(0xFFE6EFEA),
      ),
      surfaceOverlay: ColorScale(
        base: Color(0xFF1F2D27),
        subtle: Color(0xFF24352E),
        muted: Color(0xFF324B41),
        strong: Color(0xFF4A6B5E),
        contrast: Color(0xFFE6EFEA),
      ),

      // ===============================
      // Borders & Dividers
      // ===============================
      border: ColorScale(
        base: Color(0xFF24352E),
        subtle: Color(0xFF1A2620),
        muted: Color(0xFF324B41),
        strong: Color(0xFF4A6B5E),
        contrast: Color(0xFFE6EFEA),
      ),
      divider: ColorScale(
        base: Color(0xFF1F2D27),
        subtle: Color(0xFF141F1A),
        muted: Color(0xFF2C3F37),
        strong: Color(0xFF4A6B5E),
        contrast: Color(0xFFE6EFEA),
      ),

      // ===============================
      // Content
      // ===============================
      text: ContentColors(
        primary: Color(0xFFE6EFEA),
        secondary: Color(0xFFB7C6BF),
        tertiary: Color(0xFF8FA39B),
        disabled: Color(0xFF5F736A),
        inverse: Color(0xFF0F1A15),
      ),
      icon: ContentColors(
        primary: Color(0xFFE6EFEA),
        secondary: Color(0xFF8FA39B),
        tertiary: Color(0xFF5F736A),
        disabled: Color(0xFF3A4F46),
        inverse: Color(0xFF0F1A15),
      ),

      // ===============================
      // Status
      // ===============================
      success: ColorScale(
        base: Color(0xFF6FCF97),
        subtle: Color(0xFF1B2E25),
        muted: Color(0xFF4CAF73),
        strong: Color(0xFF9AE6B4),
        contrast: Color(0xFF0F1A15),
      ),
      warning: ColorScale(
        base: Color(0xFFF5C76A),
        subtle: Color(0xFF2E2615),
        muted: Color(0xFFD6AA4A),
        strong: Color(0xFFFFE29A),
        contrast: Color(0xFF1A1405),
      ),
      error: ColorScale(
        base: Color(0xFFEF9A9A),
        subtle: Color(0xFF2D1B1B),
        muted: Color(0xFFE57373),
        strong: Color(0xFFFFB4B4),
        contrast: Color(0xFF1A0F0F),
      ),
      info: ColorScale(
        base: Color(0xFF8ECDF4),
        subtle: Color(0xFF17242E),
        muted: Color(0xFF5FAEDB),
        strong: Color(0xFFB6E3FF),
        contrast: Color(0xFF0F1A15),
      ),

      // ===============================
      // Interaction
      // ===============================
      interaction: InteractionColors(
        hover: Color(0x14FFFFFF),
        pressed: Color(0x1FFFFFFF),
        focus: Color(0xFF8FB996),
        selected: Color(0xFF1F2D27),
        disabled: Color(0xFF141F1A),
      ),
    ),
    sizes: StoreSizeTokens(
      text: AppTextTokens(
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
      icons: AppIconTokens(sizeSm: 16, sizeMd: 24, sizeLg: 32, sizeXl: 40),
      layout: AppLayoutTokens(
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
    ),
  );
}
