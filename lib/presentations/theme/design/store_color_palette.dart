import 'package:flutter/cupertino.dart';

/// ===============================================================
/// AppColorPalette
/// ---------------------------------------------------------------
/// The single source of truth for all app colors.
///
/// RULES:
/// 1. UI should NEVER use raw Color values.
/// 2. UI should NEVER invent colors.
/// 3. Always choose colors by *intent*, not appearance.
/// ===============================================================
class AppColorPalette {
  const AppColorPalette({
    // Brand
    required this.primary,
    required this.secondary,
    required this.accent,

    // Neutral foundation
    required this.neutral,

    // Surfaces
    required this.background,
    required this.surface,
    required this.surfaceRaised,
    required this.surfaceOverlay,

    // Borders & dividers
    required this.border,
    required this.divider,

    // Content
    required this.text,
    required this.icon,

    // Status
    required this.success,
    required this.warning,
    required this.error,
    required this.info,

    // Interaction
    required this.interaction,
  });

  // ===============================================================
  // Brand Colors
  // ===============================================================

  /// Primary brand color.
  ///
  /// USE FOR:
  /// - Primary buttons
  /// - Main CTAs
  /// - Active states (tabs, toggles)
  /// - Highlights that represent your brand
  ///
  /// DO NOT USE FOR:
  /// - Large backgrounds
  /// - Body text
  final ColorScale primary;

  /// Secondary brand color.
  ///
  /// USE FOR:
  /// - Secondary actions
  /// - Supporting highlights
  /// - Charts / data visualization
  ///
  /// DO NOT USE FOR:
  /// - Primary CTAs
  final ColorScale secondary;

  /// Accent color (sparingly).
  ///
  /// USE FOR:
  /// - Badges
  /// - Promotional highlights
  /// - One-off emphasis
  ///
  /// DO NOT USE FOR:
  /// - Primary navigation
  /// - Repeating UI patterns
  final ColorScale accent;

  // ===============================================================
  // Neutral Foundation
  // ===============================================================

  /// Neutral grayscale foundation.
  ///
  /// THIS IS THE MOST USED COLOR SCALE.
  ///
  /// USE FOR:
  /// - Base UI structure
  /// - Fallbacks
  /// - Disabled / low-emphasis UI
  ///
  /// TIP:
  /// Most surfaces, borders, and text are derived from this scale.
  final ColorScale neutral;

  // ===============================================================
  // Surfaces
  // ===============================================================

  /// App background (lowest elevation).
  ///
  /// USE FOR:
  /// - Scaffold background
  /// - App root containers
  ///
  /// Typically the *lightest* surface.
  final ColorScale background;

  /// Standard surfaces.
  ///
  /// USE FOR:
  /// - Cards
  /// - Sheets
  /// - Forms
  /// - List items
  final ColorScale surface;

  /// Elevated surfaces.
  ///
  /// USE FOR:
  /// - Elevated cards
  /// - Floating panels
  /// - App bars (when elevated)
  final ColorScale surfaceRaised;

  /// Overlay surfaces.
  ///
  /// USE FOR:
  /// - Modals
  /// - Dialogs
  /// - Popovers
  /// - Bottom sheets
  ///
  /// Should visually separate from background.
  final ColorScale surfaceOverlay;

  // ===============================================================
  // Borders & Dividers
  // ===============================================================

  /// Borders for components.
  ///
  /// USE FOR:
  /// - Input borders
  /// - Card outlines
  /// - Component separators
  final ColorScale border;

  /// Dividers between sections.
  ///
  /// USE FOR:
  /// - List separators
  /// - Section dividers
  ///
  /// Usually lighter than borders.
  final ColorScale divider;

  // ===============================================================
  // Content
  // ===============================================================

  /// Text colors.
  ///
  /// USE BASED ON HIERARCHY, NOT SIZE.
  final ContentColors text;

  /// Icon colors.
  ///
  /// Icons often need different contrast rules than text.
  final ContentColors icon;

  // ===============================================================
  // Status / Feedback
  // ===============================================================

  /// Success states.
  ///
  /// USE FOR:
  /// - Confirmations
  /// - Positive feedback
  /// - Success banners
  final ColorScale success;

  /// Warning states.
  ///
  /// USE FOR:
  /// - Warnings
  /// - Cautionary messages
  /// - Non-blocking alerts
  final ColorScale warning;

  /// Error states.
  ///
  /// USE FOR:
  /// - Errors
  /// - Validation failures
  /// - Destructive actions
  final ColorScale error;

  /// Informational states.
  ///
  /// USE FOR:
  /// - Info banners
  /// - Neutral system messages
  final ColorScale info;

  // ===============================================================
  // Interaction
  // ===============================================================

  /// Interaction colors.
  ///
  /// USE FOR:
  /// - Hover
  /// - Pressed
  /// - Focus
  /// - Selected
  /// - Disabled states
  final InteractionColors interaction;
}

/// InteractionColors
///
/// Used ONLY for interaction states.
/// Never use these as static colors.
class InteractionColors {
  const InteractionColors({
    required this.hover,
    required this.pressed,
    required this.focus,
    required this.selected,
    required this.disabled,
  });

  /// Hover overlay (mouse / web / desktop).
  final Color hover;

  /// Pressed / active overlay.
  final Color pressed;

  /// Focus ring / outline (keyboard navigation).
  final Color focus;

  /// Selected state (tabs, list items).
  final Color selected;

  /// Disabled UI elements.
  final Color disabled;
}

/// ContentColors
///
/// Hierarchy-based colors for text & icons.
class ContentColors {
  const ContentColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.disabled,
    required this.inverse,
  });

  /// High-emphasis content.
  ///
  /// USE FOR:
  /// - Headlines
  /// - Primary body text
  final Color primary;

  /// Medium-emphasis content.
  ///
  /// USE FOR:
  /// - Secondary text
  /// - Descriptions
  final Color secondary;

  /// Low-emphasis content.
  ///
  /// USE FOR:
  /// - Hints
  /// - Metadata
  final Color tertiary;

  /// Disabled content.
  final Color disabled;

  /// Content on dark / brand backgrounds.
  final Color inverse;
}

/// ColorScale
///
/// A tonal color scale used across the app.
/// Never treat these as arbitrary shades.
class ColorScale {
  const ColorScale({
    required this.base,
    required this.subtle,
    required this.muted,
    required this.strong,
    required this.contrast,
  });

  /// Default resting color.
  ///
  /// USE FOR:
  /// - Buttons
  /// - Chips
  /// - Active elements
  final Color base;

  /// Very low emphasis.
  ///
  /// USE FOR:
  /// - Background fills
  /// - Subtle highlights
  final Color subtle;

  /// Medium emphasis.
  ///
  /// USE FOR:
  /// - Secondary UI
  /// - Icons
  final Color muted;

  /// High emphasis.
  ///
  /// USE FOR:
  /// - Active states
  /// - Emphasized UI
  final Color strong;

  /// Content color on top of `base`.
  ///
  /// USE FOR:
  /// - Text or icons placed on `base`
  final Color contrast;
}
