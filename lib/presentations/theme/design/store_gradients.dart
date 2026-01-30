import 'package:flutter/material.dart';

/// ===============================================================
/// StoreGradients
/// ---------------------------------------------------------------
/// Semantic gradients used across the app.
///
/// RULES:
/// 1. UI must NEVER construct gradients manually.
/// 2. Gradients express *intent*, not decoration.
/// 3. Gradients may ONLY reference colors from AppColorPalette.
/// ===============================================================
class StoreGradients {
  const StoreGradients({
    required this.splashBackground,
  });

  /// Splash / launch background gradient.
  ///
  /// USE FOR:
  /// - Splash screen
  /// - App launch moments
  /// - Brand-first impressions
  final Gradient splashBackground;
}
