import 'package:flutter/material.dart';

/// {@template app_typography}
/// Theme class which provides configuration of [TextStyle]
/// {@endtemplate}
interface class AppTypography extends ThemeExtension<AppTypography> {
  /// {@macro app_typography}
  AppTypography({
    required this.button2XLarge,
    required this.buttonXLarge,
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
  });

  /// Button 2XLarge
  final TextStyle button2XLarge;

  /// Button XLarge
  final TextStyle buttonXLarge;

  /// Button Large
  final TextStyle buttonLarge;

  /// Button Medium
  final TextStyle buttonMedium;

  /// Button Small
  final TextStyle buttonSmall;

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? button2XLarge,
    TextStyle? buttonXLarge,
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
  }) {
    return AppTypography(
      button2XLarge: button2XLarge ?? this.button2XLarge,
      buttonXLarge: buttonXLarge ?? this.buttonXLarge,
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }

    return AppTypography(
      button2XLarge: TextStyle.lerp(button2XLarge, other.button2XLarge, t)!,
      buttonXLarge: TextStyle.lerp(buttonXLarge, other.buttonXLarge, t)!,
      buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
      buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
    );
  }
}

/// {@macro app_typography}
class AppRegularTypography extends AppTypography {
  /// {@macro app_typography}
  AppRegularTypography({
    super.button2XLarge = const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w500,
    ),
    super.buttonXLarge = const TextStyle(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w500,
    ),
    super.buttonLarge = const TextStyle(
      fontSize: 18,
      height: 26 / 18,
      fontWeight: FontWeight.w500,
    ),
    super.buttonMedium = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
    ),
    super.buttonSmall = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
  });
}
