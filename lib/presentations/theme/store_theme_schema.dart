import 'package:storeit/presentations/theme/design/store_color_palette.dart';
import 'package:storeit/presentations/theme/design/store_gradients.dart';
import 'package:storeit/presentations/theme/design/store_size_tokens.dart';

/// Represents the complete theme for the Store app.
/// Combines colors, typography, layout, and icon sizing into a single design system token set.
class StoreThemeSchema {
  /// Creates a theme with all token groups required.
  const StoreThemeSchema({
    required this.colors,
    required this.sizes,
    required this.gradients,
  });

  /// Semantic color palette for the theme
  final AppColorPalette colors;

  /// All sizing-related tokens: text, icons, spacing, radii, etc.
  final StoreSizeTokens sizes;

  /// Gradients for the theme
  final StoreGradients gradients;
}
