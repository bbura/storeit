import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:storeit/core/utils/generated/assets.gen.dart';
import 'package:storeit/presentations/theme/extensions/theme_extensions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  late final List<_OnboardingItem> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final colors = context.stColorPalette;

    _items = [
      _OnboardingItem(
        image: StoreItAssets.icons.outline.users.userId.svg(
          color: colors.icon.primary,
        ),
        title: 'Secure Storage',
        subtitle: 'Safe, clean and convenient storage units.',
        buttonText: 'Continue',
      ),
      _OnboardingItem(
        image: StoreItAssets.icons.outline.users.userPlusRounded.svg(
          color: colors.icon.primary,
        ),
        title: 'Track Your Unit',
        subtitle: 'Manage and monitor your storage solutions.',
        buttonText: 'Continue',
      ),
      _OnboardingItem(
        image: StoreItAssets.icons.outline.astronomy.asteroid.svg(
          color: colors.icon.secondary,
        ),
        title: 'Find Your Storage',
        subtitle: 'Manage and maintain your storage online, anytime.',
        buttonText: 'Get Started',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.stColorPalette;
    final text = context.stSizes.text;
    final layout = context.stSizes.layout;

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

            SizedBox(height: layout.spaceLg),

            /// Carousel
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _items.length,
                physics: const NeverScrollableScrollPhysics(), // disables swipe
                onPageChanged: (index) => setState(() => _currentPage = index),
                itemBuilder: (_, index) => _OnboardingCard(item: _items[index]),
              ),
            ),

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
                  onPressed: () async {
                    if (_currentPage < _items.length - 1) {
                      await _controller.nextPage(
                        duration: const Duration(milliseconds: 350),
                        curve: Curves.easeOut,
                      );
                    } else {
                      // TODO: Navigate to auth / home
                    }
                  },
                  child: Text(
                    _items[_currentPage].buttonText,
                    style: text.labelLg.copyWith(
                      color: context.stColorPalette.text.inverse,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: layout.spaceXl),
          ],
        ),
      ),
    );
  }
}

class _OnboardingCard extends StatelessWidget {
  final _OnboardingItem item;

  const _OnboardingCard({required this.item});

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
            item.image,
            SizedBox(height: layout.spaceXl),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: text.headlineMd.copyWith(color: colors.text.primary),
            ),
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
  final SvgPicture image;
  final String title;
  final String subtitle;
  final String buttonText;

  const _OnboardingItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });
}
