import 'dart:async';

import 'package:flutter/material.dart';
import 'package:storeit/core/utils/generated/assets.gen.dart';
import 'package:storeit/presentations/features/onboarding/pages/onboarding_screen.dart';
import 'package:storeit/presentations/theme/extensions/theme_extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();

    // Pulse animation setup
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(
      begin: 0.95,
      end: 1.05,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Navigate after delay
    Timer(const Duration(seconds: 2), () async {
      if (!mounted) return;
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _pulseAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: _pulseAnimation.value,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32), // Rounded corners
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 20,
                  decoration: BoxDecoration(
                    gradient: context.stGradients.splashBackground,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StoreItAssets.icons.bold.security.lock.svg(
                          color: context.stColorPalette.text.inverse,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'storeit',
                          style: context.stSizes.text.headlineMd.copyWith(
                            color: context.stColorPalette.text.inverse,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
