import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/store_color_palette.dart';
import 'package:storeit/presentations/theme/store_color_scale.dart';
import 'package:storeit/presentations/theme/store_icon_tokens.dart';
import 'package:storeit/presentations/theme/store_layout_tokens.dart';
import 'package:storeit/presentations/theme/store_text_tokens.dart';
import 'package:storeit/presentations/theme/store_theme.dart';

class StoreTheme {
  static final light = AppThemeTokens(
    colors: AppColorPalette(
      primary: ColorScale.fromBase(const Color(0xFF22C55E)),
      // Bright Green
      secondary: ColorScale.fromBase(const Color(0xFF4ADE80)),
      // Soft Green
      accent: ColorScale.fromBase(const Color(0xFF16A34A)),
      // Deep Green Accent
      background: ColorScale.fromBase(const Color(0xFFF0FDF4)),
      // Very Light Minty Green Background
      surface: ColorScale.fromBase(const Color(0xFFFFFFFF)),
      // White surface
      border: ColorScale.fromBase(const Color(0xFFD1FAE5)),
      // Light Green Border
      text: ColorScale.fromBase(const Color(0xFF065F46)),
      // Dark Green Text
      icon: ColorScale.fromBase(const Color(0xFF166534)),
      // Darker Green Icons
      success: ColorScale.fromBase(const Color(0xFF22C55E)),
      // Success Green
      warning: ColorScale.fromBase(const Color(0xFFFACC15)),
      // Yellow Warning
      error: ColorScale.fromBase(const Color(0xFFDC2626)),
      // Red Error
      info: ColorScale.fromBase(const Color(0xFF3B82F6)), // Blue Info
    ),
    icons: const AppIconTokens(
      defaultColor: Color(0xFF166534),
      activeColor: Color(0xFF22C55E),
      disabledColor: Color(0xFFA7F3D0),
      sizeSm: 16,
      sizeMd: 24,
      sizeLg: 32,
      sizeXl: 40,
    ),
    layout: const AppLayoutTokens(
      radiusXs: 2,
      radiusSm: 6,
      radiusMd: 12,
      radiusLg: 20,
      radiusXl: 28,
      radius2Xl: 36,
      radiusFull: 999,
      space2Xs: 2,
      spaceXs: 4,
      spaceSm: 8,
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
        color: Color(0xFF065F46),
      ),
      displayMd: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: Color(0xFF065F46),
      ),
      displaySm: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Color(0xFF065F46),
      ),

      headlineLg: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Color(0xFF065F46),
      ),
      headlineMd: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFF065F46),
      ),
      headlineSm: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF065F46),
      ),

      titleLg: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF065F46),
      ),
      titleMd: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF065F46),
      ),
      titleSm: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF065F46),
      ),

      bodyLg: TextStyle(fontSize: 16, color: Color(0xFF14532D)),
      bodyMd: TextStyle(fontSize: 14, color: Color(0xFF14532D)),
      bodySm: TextStyle(fontSize: 12, color: Color(0xFF14532D)),

      labelLg: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF166534),
      ),
      labelMd: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color(0xFF166534),
      ),
      labelSm: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Color(0xFF166534),
      ),
    ),
  );

  static final dark = AppThemeTokens(
    colors: AppColorPalette(
      primary: ColorScale.fromBase(const Color(0xFFF97316)),
      // Vibrant Orange
      secondary: ColorScale.fromBase(const Color(0xFFFBBF24)),
      // Warm Yellow-Orange
      accent: ColorScale.fromBase(const Color(0xFFEA580C)),
      // Deep Orange Accent
      background: ColorScale.fromBase(const Color(0xFF1A120B)),
      // Very Dark Brownish-Orange Background
      surface: ColorScale.fromBase(const Color(0xFF2C1F16)),
      // Dark Brown Surface
      border: ColorScale.fromBase(const Color(0xFF4B3613)),
      // Medium Dark Border
      text: ColorScale.fromBase(const Color(0xFFFFF7ED)),
      // Warm Off-White Text
      icon: ColorScale.fromBase(const Color(0xFFFBBF24)),
      // Yellow Icons
      success: ColorScale.fromBase(const Color(0xFF4ADE80)),
      // Bright Green Success (contrast)
      warning: ColorScale.fromBase(const Color(0xFFFBBF24)),
      // Warm Yellow Warning
      error: ColorScale.fromBase(const Color(0xFFEF4444)),
      // Red Error
      info: ColorScale.fromBase(const Color(0xFFF97316)), // Orange Info
    ),
    icons: const AppIconTokens(
      defaultColor: Color(0xFFFBBF24),
      activeColor: Color(0xFFF97316),
      disabledColor: Color(0xFF7C2D12),
      sizeSm: 16,
      sizeMd: 24,
      sizeLg: 32,
      sizeXl: 40,
    ),
    layout: const AppLayoutTokens(
      radiusXs: 2,
      radiusSm: 6,
      radiusMd: 12,
      radiusLg: 20,
      radiusXl: 28,
      radius2Xl: 36,
      radiusFull: 999,
      space2Xs: 2,
      spaceXs: 4,
      spaceSm: 8,
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
        color: Color(0xFFFFF7ED),
      ),
      displayMd: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFF7ED),
      ),
      displaySm: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFF7ED),
      ),

      headlineLg: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFF7ED),
      ),
      headlineMd: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFF7ED),
      ),
      headlineSm: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFF7ED),
      ),

      titleLg: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFF7ED),
      ),
      titleMd: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFF7ED),
      ),
      titleSm: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFF7ED),
      ),

      bodyLg: TextStyle(fontSize: 16, color: Color(0xFFEAB308)),
      bodyMd: TextStyle(fontSize: 14, color: Color(0xFFEAB308)),
      bodySm: TextStyle(fontSize: 12, color: Color(0xFFEAB308)),

      labelLg: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFBBF24),
      ),
      labelMd: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFBBF24),
      ),
      labelSm: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFBBF24),
      ),
    ),
  );
}
