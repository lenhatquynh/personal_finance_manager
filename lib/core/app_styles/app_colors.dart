import 'package:flutter/material.dart';

/// {@template app_colors}
/// Colors class for themes which provides direct access with static fields.
/// {@endtemplate}
class AppColors {
  AppColors._();

  /// The color white
  static const white = Colors.white;

  /// The color black
  static const black = Colors.black;

  /// The color transparent
  static const transparent = Colors.transparent;
  /// Dark brand color palette.
  static const brand = MaterialColor(
    0xFF1D1D1D,
    {
      50: Color(0xFFE0E0E0),
      100: Color(0xFFB3B3B3),
      150: Color(0xFF999999),
      200: Color(0xFF808080),
      250: Color(0xFF666666),
      300: Color(0xFF4D4D4D),
      400: Color(0xFF333333),
      500: Color(0xFF1D1D1D),
      600: Color(0xFF1A1A1A),
      700: Color(0xFF171717),
      800: Color(0xFF141414),
      900: Color(0xFF0F0F0F),
    },
  );

  /// Light gray color palette.
  static const grayLight = MaterialColor(
    0xFF667085,
    {
      50: Color(0xFFFCFCFD),
      100: Color(0xFFF9FAFB),
      150: Color(0xFFF2F4F7),
      200: Color(0xFFEAECF0),
      250: Color(0xFFD0D5DD),
      300: Color(0xFF98A2B3),
      400: Color(0xFF667085),
      500: Color(0xFF475467),
      600: Color(0xFF344054),
      700: Color(0xFF182230),
      800: Color(0xFF101828),
      900: Color(0xFF0C111D),
    },
  );

  /// Dark gray color palette.
  static const grayDark = MaterialColor(
    0xFF85888E,
    {
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F6),
      150: Color(0xFFF0F1F1),
      200: Color(0xFFECECED),
      250: Color(0xFFCECFD2),
      300: Color(0xFF94969C),
      400: Color(0xFF85888E),
      500: Color(0xFF61646C),
      600: Color(0xFF333741),
      700: Color(0xFF1F242F),
      800: Color(0xFF161B26),
      900: Color(0xFF0C111D),
    },
  );

  /// Grey color palette.
  static const grey = MaterialColor(
    0xFF6B7280,
    {
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      150: Color(0xFFE5E7EB),
      200: Color(0xFFD1D5DB),
      250: Color(0xFF9CA3AF),
      300: Color(0xFF6B7280),
      400: Color(0xFF4B5563),
      500: Color(0xFF374151),
      600: Color(0xFF1F2937),
      700: Color(0xFF111827),
      800: Color(0xFF0F172A),
      900: Color(0xFF0A0E14),
    },
  );

  /// Custom muted color palette for lighter tones.
  static const muted = MaterialColor(
    0xFF0A0E0B,
    {
      50: Color(0xFFF2F4F3), // Lightest
      100: Color(0xFFE1E6E4),
      150: Color(0xFFD1D8D6),
      200: Color(0xFFC0CAC7),
      250: Color(0xFFAFBCB9),
      300: Color(0xFF9EAEAA),
      400: Color(0xFF8EA09C),
      500: Color(0xFF0A0E0B), // Primary Muted
      600: Color(0xFF090C0A),
      700: Color(0xFF080A08),
      800: Color(0xFF070906),
      900: Color(0xFF060704), // Darkest Muted
    },
  );

  // Light theme background colors
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF5F5F5);

  // Dark theme background colors
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);

  // Accent colors
  static const Color error = Color(0xFFCF6679);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);

  // Divider colors
  static const Color dividerLight = Color(0xFFE0E0E0);
  static const Color dividerDark = Color(0xFF373737);

  // Button-specific colors
  static const Color buttonDisabledLight = Color(0xFFBDBDBD);
  static const Color buttonDisabledDark = Color(0xFF424242);
}
