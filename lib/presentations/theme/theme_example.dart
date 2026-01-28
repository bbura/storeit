import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/design/store_text_tokens.dart';
import 'package:storeit/presentations/theme/extensions/theme_extensions.dart';
import 'package:storeit/presentations/theme/store_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme() => setState(() => _isDarkMode = !_isDarkMode);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: StoreThemeManager.build(StoreThemeManager.light),
      darkTheme: StoreThemeManager.build(StoreThemeManager.dark, dark: true),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Theme Tester',
            style: context.stSizes.text.titleLg.copyWith(
              color: context.stColorPalette.text.inverse,
            ),
          ),
          backgroundColor: context.stColorPalette.surfaceRaised.base,
          actions: [
            IconButton(
              icon: Icon(
                _isDarkMode ? Icons.brightness_2 : Icons.wb_sunny,
                color: context.stColorPalette.icon.primary,
                size: context.stSizes.icons.sizeMd,
              ),
              onPressed: _toggleTheme,
              tooltip: 'Toggle Theme',
            ),
          ],
        ),
        body: const TestThemeScreen(),
      ),
    );
  }
}

class TestThemeScreen extends StatelessWidget {
  const TestThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.stColorPalette;
    final text = context.stSizes.text;
    final layout = context.stSizes.layout;
    final icons = context.stSizes.icons;

    return ColoredBox(
      color: colors.background.base,
      child: Padding(
        padding: EdgeInsets.all(layout.spaceLg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('Brand Colors', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _colorBox('Primary Base', colors.primary.base, text),
                  _colorBox('Primary Subtle', colors.primary.subtle, text),
                  _colorBox('Primary Muted', colors.primary.muted, text),
                  _colorBox('Primary Strong', colors.primary.strong, text),
                  _colorBox('Primary Contrast', colors.primary.contrast, text),
                  _colorBox('Secondary Base', colors.secondary.base, text),
                  _colorBox('Accent Base', colors.accent.base, text),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Surfaces', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _surfaceBox('Background', colors.background.base, text),
                  _surfaceBox('Surface', colors.surface.base, text),
                  _surfaceBox(
                    'Surface Raised',
                    colors.surfaceRaised.base,
                    text,
                  ),
                  _surfaceBox(
                    'Surface Overlay',
                    colors.surfaceOverlay.base,
                    text,
                  ),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Text Colors', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _colorBox('Primary', colors.text.primary, text),
                  _colorBox('Secondary', colors.text.secondary, text),
                  _colorBox('Tertiary', colors.text.tertiary, text),
                  _colorBox('Disabled', colors.text.disabled, text),
                  _colorBox('Inverse', colors.text.inverse, text),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Icon Colors', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _iconBox('Primary', colors.icon.primary, icons.sizeMd),
                  _iconBox('Secondary', colors.icon.secondary, icons.sizeMd),
                  _iconBox('Disabled', colors.icon.disabled, icons.sizeMd),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Status Colors', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _colorBox('Success', colors.success.base, text),
                  _colorBox('Warning', colors.warning.base, text),
                  _colorBox('Error', colors.error.base, text),
                  _colorBox('Info', colors.info.base, text),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Interaction States', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _colorBox('Hover', colors.interaction.hover, text),
                  _colorBox('Pressed', colors.interaction.pressed, text),
                  _colorBox('Focus', colors.interaction.focus, text),
                  _colorBox('Selected', colors.interaction.selected, text),
                  _colorBox('Disabled', colors.interaction.disabled, text),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Typography Samples', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              _typographySample(
                'Display Large',
                text.displayLg,
                colors.text.primary,
              ),
              _typographySample(
                'Display Medium',
                text.displayMd,
                colors.text.primary,
              ),
              _typographySample(
                'Display Small',
                text.displaySm,
                colors.text.primary,
              ),
              _typographySample(
                'Headline Large',
                text.headlineLg,
                colors.text.primary,
              ),
              _typographySample(
                'Headline Medium',
                text.headlineMd,
                colors.text.primary,
              ),
              _typographySample(
                'Headline Small',
                text.headlineSm,
                colors.text.primary,
              ),
              _typographySample(
                'Title Large',
                text.titleLg,
                colors.text.primary,
              ),
              _typographySample(
                'Title Medium',
                text.titleMd,
                colors.text.primary,
              ),
              _typographySample(
                'Title Small',
                text.titleSm,
                colors.text.secondary,
              ),
              _typographySample('Body Large', text.bodyLg, colors.text.primary),
              _typographySample(
                'Body Medium',
                text.bodyMd,
                colors.text.secondary,
              ),
              _typographySample(
                'Body Small',
                text.bodySm,
                colors.text.tertiary,
              ),
              _typographySample(
                'Label Large',
                text.labelLg,
                colors.text.primary,
              ),
              _typographySample(
                'Label Medium',
                text.labelMd,
                colors.text.secondary,
              ),
              _typographySample(
                'Label Small',
                text.labelSm,
                colors.text.tertiary,
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Radius Sizes', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Wrap(
                spacing: layout.spaceSm,
                children: [
                  _radiusBox(layout.radiusXs, 'xs', colors.primary.base, text),
                  _radiusBox(layout.radiusSm, 'sm', colors.primary.base, text),
                  _radiusBox(layout.radiusMd, 'md', colors.primary.base, text),
                  _radiusBox(layout.radiusLg, 'lg', colors.primary.base, text),
                  _radiusBox(layout.radiusXl, 'xl', colors.primary.base, text),
                  _radiusBox(
                    layout.radius2Xl,
                    '2xl',
                    colors.primary.base,
                    text,
                  ),
                  _radiusBox(
                    layout.radiusFull,
                    'full',
                    colors.primary.base,
                    text,
                  ),
                ],
              ),
              SizedBox(height: layout.spaceLg),

              _sectionTitle('Icon Sizes', text, colors.primary.strong),
              SizedBox(height: layout.spaceSm),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: icons.sizeSm,
                    color: colors.accent.base,
                  ),
                  SizedBox(width: layout.spaceMd),
                  Icon(
                    Icons.star,
                    size: icons.sizeMd,
                    color: colors.accent.base,
                  ),
                  SizedBox(width: layout.spaceMd),
                  Icon(
                    Icons.star,
                    size: icons.sizeLg,
                    color: colors.accent.base,
                  ),
                  SizedBox(width: layout.spaceMd),
                  Icon(
                    Icons.star,
                    size: icons.sizeXl,
                    color: colors.accent.base,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String label, AppTextTokens text, Color color) {
    return Text(label, style: text.headlineMd.copyWith(color: color));
  }

  Widget _colorBox(String label, Color color, AppTextTokens text) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black12),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: text.labelSm.copyWith(
          color: useWhiteForeground(color) ? Colors.white : Colors.black87,
        ),
      ),
    );
  }

  Widget _surfaceBox(String label, Color color, AppTextTokens text) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black12),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: text.labelSm.copyWith(
          color: useWhiteForeground(color) ? Colors.white : Colors.black87,
        ),
      ),
    );
  }

  Widget _iconBox(String label, Color color, double size) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: color, size: size),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _radiusBox(
      double radius,
      String label,
      Color color,
      AppTextTokens text,
      ) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      alignment: Alignment.center,
      child: Text(label, style: text.labelLg.copyWith(color: Colors.white)),
    );
  }

  Widget _typographySample(String label, TextStyle style, Color color) {
    return Text(label, style: style.copyWith(color: color));
  }

  bool useWhiteForeground(Color backgroundColor, {double bias = 0.0}) {
    return backgroundColor.computeLuminance() < 0.5 + bias;
  }
}
