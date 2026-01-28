import 'package:storeit/presentations/theme/design/store_icon_tokens.dart';
import 'package:storeit/presentations/theme/design/store_layout_tokens.dart';
import 'package:storeit/presentations/theme/design/store_text_tokens.dart';

/// Combines all size-related tokens in one place
class StoreSizeTokens {
  const StoreSizeTokens({
    required this.text,
    required this.icons,
    required this.layout,
  });

  /// Typography tokens
  final AppTextTokens text;

  /// Icon size tokens
  final AppIconTokens icons;

  /// Layout tokens: spacing, radii, general sizes
  final AppLayoutTokens layout;
}
