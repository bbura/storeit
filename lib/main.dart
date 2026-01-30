import 'package:flutter/material.dart';
import 'package:storeit/presentations/features/dashboard/pages/dashboard_screen.dart';
import 'package:storeit/presentations/features/splash/pages/splash_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: StoreThemeManager.build(StoreThemeManager.light),
      darkTheme: StoreThemeManager.build(StoreThemeManager.dark, dark: true),
      themeMode: context.isDark ? ThemeMode.dark : ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
