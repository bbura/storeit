import 'package:storeit/presentations/theme/store_color_palette.dart';
import 'package:storeit/presentations/theme/store_icon_tokens.dart';
import 'package:storeit/presentations/theme/store_layout_tokens.dart';
import 'package:storeit/presentations/theme/store_text_tokens.dart';

class AppThemeTokens {
  const AppThemeTokens({
    required this.colors,
    required this.text,
    required this.icons,
    required this.layout,
  });

  final AppColorPalette colors;
  final AppTextTokens text;
  final AppIconTokens icons;
  final AppLayoutTokens layout;
}
