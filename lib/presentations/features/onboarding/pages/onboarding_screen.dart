import 'dart:math';

import 'package:flutter/material.dart';
import 'package:storeit/core/utils/generated/assets.gen.dart';
import 'package:storeit/presentations/features/dashboard/pages/dashboard_screen.dart';
import 'package:storeit/presentations/theme/extensions/theme_extensions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  late final List<_OnboardingItem> _items;

  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isAnimating = false;

  final List<double> _randomRotations = [];
  final List<Offset> _randomExitDirections = [];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    final random = Random();

    // Random rotations for cards underneath the top card
    _randomRotations.addAll(
      List.generate(
        10,
        (_) => (random.nextDouble() - 0.5) * 0.2, // -0.1 to +0.1 radians
      ),
    );

    // Random exit directions for top card
    _randomExitDirections.addAll(
      List.generate(
        10,
        (_) => Offset(
          (random.nextDouble() - 0.5) * 2,
          // Horizontal direction multiplier
          -0.5 - random.nextDouble() * 0.5, // Vertical direction upwards
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _items = [
      _OnboardingItem(
        image: StoreItAssets.images.onboarding.onboardingWelcome.image(),
        title: 'The right place for storage',
        subtitle:
            'Your simple and secure way to manage self-storage, all in one app.',
        buttonText: 'Continue',
      ),
      _OnboardingItem(
        image: StoreItAssets.images.onboarding.onboardingEasyStorage.image(),
        title: 'Easy Storage',
        subtitle:
            'Store your items safely in clean, secure, and monitored units.',
        buttonText: 'Continue',
      ),
      _OnboardingItem(
        image: StoreItAssets.images.onboarding.onboardingBooking.image(),
        title: 'Easy Booking',
        subtitle: 'Rent and book storage units in just a few taps, anytime.',
        buttonText: 'Continue',
      ),
      _OnboardingItem(
        image: StoreItAssets.images.onboarding.onboardingPayment.image(),
        title: 'Flexible Payments',
        subtitle: 'Pay monthly or yearly with simple, transparent pricing.',
        buttonText: 'Continue',
      ),
      _OnboardingItem(
        image: StoreItAssets.images.onboarding.onboardingLocation.image(),
        title: 'Choose Your Location',
        subtitle:
            'Find and manage storage units at locations that work for you.',
        buttonText: 'Get Started',
      ),
    ];
  }

  Future<void> _goToNextPage() async {
    if (_currentPage >= _items.length - 1) {
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const DashboardScreen()),
      );
      return;
    }
    if (_isAnimating) {
      return;
    }

    _isAnimating = true;

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    await _controller.forward(from: 0);

    setState(() {
      _currentPage += 1;
    });

    _isAnimating = false;
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.stColorPalette;
    final text = context.stSizes.text;
    final layout = context.stSizes.layout;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: colors.background.base,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: layout.spaceLg),

            /// Brand
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StoreItAssets.icons.bold.security.lock.svg(
                  color: colors.primary.base,
                ),
                SizedBox(width: layout.space2Xs),
                Text(
                  'storeit',
                  style: text.titleLg.copyWith(color: colors.primary.base),
                ),
              ],
            ),

            /// Stacked/Fanned Cards
            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: List.generate(_items.length, (index) {
                    if (index < _currentPage) {
                      return const SizedBox.shrink();
                    }

                    final isTop = index == _currentPage;
                    final stackIndex = index - _currentPage;

                    final offsetY = stackIndex * 20.0;
                    final offsetX = stackIndex * 10.0;
                    final scale = 1 - stackIndex * 0.05;
                    final rotation = isTop
                        ? 0
                        : _randomRotations[index % _randomRotations.length];

                    return AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        var animatedOffsetX = offsetX;
                        var animatedOffsetY = offsetY;
                        final animatedScale = scale;
                        final animatedRotation = rotation;

                        if (isTop && _isAnimating) {
                          // Random exit direction multiplied by screen size
                          final direction =
                              _randomExitDirections[_currentPage %
                                  _randomExitDirections.length];
                          animatedOffsetX =
                              offsetX +
                              direction.dx * screenWidth * _animation.value;
                          animatedOffsetY =
                              offsetY +
                              direction.dy * screenHeight * _animation.value;
                        }

                        return Transform.translate(
                          offset: Offset(animatedOffsetX, animatedOffsetY),
                          child: Transform.rotate(
                            angle: animatedRotation.toDouble(),
                            child: Transform.scale(
                              scale: animatedScale,
                              child: child,
                            ),
                          ),
                        );
                      },
                      child: _OnboardingCard(
                        key: ValueKey(index),
                        item: _items[index],
                      ),
                    );
                  }).reversed.toList(),
                ),
              ),
            ),
            SizedBox(height: layout.spaceXl),

            /// Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_items.length, (index) {
                final isActive = index == _currentPage;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: EdgeInsets.symmetric(horizontal: layout.spaceXs),
                  width: isActive ? 16 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: isActive
                        ? colors.primary.base
                        : colors.primary.muted,
                    borderRadius: BorderRadius.circular(layout.radiusFull),
                  ),
                );
              }),
            ),

            SizedBox(height: layout.spaceLg),

            /// CTA Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: layout.spaceLg),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary.base,
                    foregroundColor: colors.primary.contrast,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(layout.radiusFull),
                    ),
                  ),
                  onPressed: _goToNextPage,
                  child: Text(
                    _items[_currentPage].buttonText,
                    style: text.labelLg.copyWith(color: colors.text.inverse),
                  ),
                ),
              ),
            ),

            SizedBox(height: layout.spaceLg),
          ],
        ),
      ),
    );
  }
}

class _OnboardingCard extends StatelessWidget {
  const _OnboardingCard({super.key, required this.item});

  final _OnboardingItem item;

  @override
  Widget build(BuildContext context) {
    final colors = context.stColorPalette;
    final text = context.stSizes.text;
    final layout = context.stSizes.layout;

    return Padding(
      padding: EdgeInsets.all(layout.spaceLg),
      child: Container(
        padding: EdgeInsets.all(layout.spaceLg),
        decoration: BoxDecoration(
          color: colors.background.base,
          borderRadius: BorderRadius.circular(layout.radiusXl),
          // Rounded corners
          boxShadow: [
            BoxShadow(
              color: colors.surfaceRaised.strong,
              blurRadius: 10, // Shadow blur
              spreadRadius: 1, // Shadow spread
              offset: const Offset(0, 6), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: text.headlineMd.copyWith(color: colors.text.primary),
            ),
            SizedBox(height: layout.spaceSm),
            item.image,
            SizedBox(height: layout.spaceSm),
            Text(
              item.subtitle,
              textAlign: TextAlign.center,
              style: text.bodyMd.copyWith(color: colors.text.secondary),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingItem {
  const _OnboardingItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  final Image image;
  final String title;
  final String subtitle;
  final String buttonText;
}
