import 'package:flutter/material.dart';
import 'package:storeit/presentations/theme/extensions/theme_extensions.dart';
import 'package:storeit/presentations/theme/store_text_tokens.dart';
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
            style: context.stText.titleLg.copyWith(
              color: context.stColorPalette.text[90],
            ),
          ),
          backgroundColor: context.stColorPalette.primary[50],
          actions: [
            IconButton(
              icon: Icon(
                _isDarkMode ? Icons.brightness_2 : Icons.wb_sunny,
                color: context.stColorPalette.icon[60],
                size: context.stIcons.sizeMd,
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
    final text = context.stText;
    final layout = context.stSizes;
    final icons = context.stIcons;

    return Padding(
      padding: EdgeInsets.all(layout.spaceLg),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Primary Colors:',
              style: text.headlineMd.copyWith(color: colors.primary[70]),
            ),
            SizedBox(height: layout.spaceSm),
            Wrap(
              spacing: layout.spaceSm,
              children: List.generate(20, (index) {
                final shade = (index + 1) * 5;
                return Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: colors.primary[shade],
                    borderRadius: BorderRadius.circular(layout.radiusSm),
                    border: Border.all(color: colors.border[40]),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$shade',
                    style: text.labelSm.copyWith(color: colors.text[10]),
                  ),
                );
              }),
            ),

            SizedBox(height: layout.spaceLg),
            Text(
              'Typography Samples:',
              style: text.headlineMd.copyWith(color: colors.primary[70]),
            ),
            SizedBox(height: layout.spaceSm),

            Text(
              'Display Large',
              style: text.displayLg.copyWith(color: colors.text[90]),
            ),
            Text(
              'Display Medium',
              style: text.displayMd.copyWith(color: colors.text[90]),
            ),
            Text(
              'Display Small',
              style: text.displaySm.copyWith(color: colors.text[90]),
            ),
            SizedBox(height: layout.spaceSm),

            Text(
              'Headline Large',
              style: text.headlineLg.copyWith(color: colors.text[90]),
            ),
            Text(
              'Headline Medium',
              style: text.headlineMd.copyWith(color: colors.text[90]),
            ),
            Text(
              'Headline Small',
              style: text.headlineSm.copyWith(color: colors.text[90]),
            ),
            SizedBox(height: layout.spaceSm),

            Text(
              'Title Large',
              style: text.titleLg.copyWith(color: colors.text[90]),
            ),
            Text(
              'Title Medium',
              style: text.titleMd.copyWith(color: colors.text[90]),
            ),
            Text(
              'Title Small',
              style: text.titleSm.copyWith(color: colors.text[90]),
            ),
            SizedBox(height: layout.spaceSm),

            Text(
              'Body Large',
              style: text.bodyLg.copyWith(color: colors.text[90]),
            ),
            Text(
              'Body Medium',
              style: text.bodyMd.copyWith(color: colors.text[90]),
            ),
            Text(
              'Body Small',
              style: text.bodySm.copyWith(color: colors.text[90]),
            ),
            SizedBox(height: layout.spaceSm),

            Text(
              'Label Large',
              style: text.labelLg.copyWith(color: colors.text[90]),
            ),
            Text(
              'Label Medium',
              style: text.labelMd.copyWith(color: colors.text[90]),
            ),
            Text(
              'Label Small',
              style: text.labelSm.copyWith(color: colors.text[90]),
            ),

            SizedBox(height: layout.spaceLg),
            Text(
              'Radius Sizes:',
              style: text.headlineMd.copyWith(color: colors.primary[70]),
            ),
            SizedBox(height: layout.spaceSm),
            Wrap(
              spacing: layout.spaceSm,
              children: [
                _radiusBox(layout.radiusXs, 'xs', colors.primary[60], text),
                _radiusBox(layout.radiusSm, 'sm', colors.primary[60], text),
                _radiusBox(layout.radiusMd, 'md', colors.primary[60], text),
                _radiusBox(layout.radiusLg, 'lg', colors.primary[60], text),
                _radiusBox(layout.radiusXl, 'xl', colors.primary[60], text),
                _radiusBox(layout.radius2Xl, '2xl', colors.primary[60], text),
                _radiusBox(layout.radiusFull, 'full', colors.primary[60], text),
              ],
            ),

            SizedBox(height: layout.spaceLg),
            Text(
              'Icon Sizes:',
              style: text.headlineMd.copyWith(color: colors.primary[70]),
            ),
            SizedBox(height: layout.spaceSm),
            Row(
              children: [
                Icon(Icons.star, size: icons.sizeSm, color: colors.accent[60]),
                SizedBox(width: layout.spaceMd),
                Icon(Icons.star, size: icons.sizeMd, color: colors.accent[60]),
                SizedBox(width: layout.spaceMd),
                Icon(Icons.star, size: icons.sizeLg, color: colors.accent[60]),
                SizedBox(width: layout.spaceMd),
                Icon(Icons.star, size: icons.sizeXl, color: colors.accent[60]),
              ],
            ),
          ],
        ),
      ),
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
}
