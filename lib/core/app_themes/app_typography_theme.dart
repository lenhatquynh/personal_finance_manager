import 'package:flutter/material.dart';

/// {@template app_typography}
/// Theme class which provides configuration of [TextStyle]
/// {@endtemplate}
class AppTypographyTheme extends ThemeExtension<AppTypographyTheme> {
  /// {@macro app_typography}
  AppTypographyTheme({
    required this.button2XLarge,
    required this.buttonXLarge,
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
    required this.inputPlaceHolder,
    required this.inputLabel,
    required this.inputHint,
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

  /// Input placeholder text style
  final TextStyle inputPlaceHolder;

  /// Input label text style
  final TextStyle inputLabel;

  /// Input hint text style
  final TextStyle inputHint;

  @override
  ThemeExtension<AppTypographyTheme> copyWith({
    TextStyle? button2XLarge,
    TextStyle? buttonXLarge,
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
    TextStyle? inputPlaceHolder,
    TextStyle? inputLabel,
    TextStyle? inputHint,
  }) {
    return AppTypographyTheme(
      button2XLarge: button2XLarge ?? this.button2XLarge,
      buttonXLarge: buttonXLarge ?? this.buttonXLarge,
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
      inputPlaceHolder: inputPlaceHolder ?? this.inputPlaceHolder,
      inputLabel: inputLabel ?? this.inputLabel,
      inputHint: inputHint ?? this.inputHint,
    );
  }

  @override
  ThemeExtension<AppTypographyTheme> lerp(
    covariant ThemeExtension<AppTypographyTheme>? other,
    double t,
  ) {
    if (other is! AppTypographyTheme) {
      return this;
    }

    return AppTypographyTheme(
      button2XLarge: TextStyle.lerp(button2XLarge, other.button2XLarge, t)!,
      buttonXLarge: TextStyle.lerp(buttonXLarge, other.buttonXLarge, t)!,
      buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
      buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
      inputPlaceHolder: TextStyle.lerp(inputPlaceHolder, other.inputPlaceHolder, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      inputHint: TextStyle.lerp(inputHint, other.inputHint, t)!,
    );
  }
}

/// {@macro app_typography}
class AppRegularTypography extends AppTypographyTheme {
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
    super.inputPlaceHolder = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
    ),
    super.inputLabel = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w400,
    ),
    super.inputHint = const TextStyle(
      fontSize: 12,
      height: 16 / 12,
      fontWeight: FontWeight.w400,
    ),
  });
}
