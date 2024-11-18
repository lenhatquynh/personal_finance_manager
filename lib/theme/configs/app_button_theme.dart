import 'package:flutter/material.dart';
import 'package:personal_finance_manager/theme/app_colors.dart';

/// {@template app_button_theme}
/// Theme class which provides configuration of buttons
/// {@endtemplate}
class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  /// {@macro app_button_theme}
  const AppButtonTheme({
    required this.primaryText,
    required this.primaryTextOnBrand,
    required this.primaryDefault,
    required this.primaryHover,
    required this.primaryFocused,
    required this.primaryDisabled,
    required this.secondaryText,
    required this.secondaryDefault,
    required this.secondaryHover,
    required this.secondaryFocused,
    required this.secondaryDisabled,
    required this.outlinedText,
    required this.outlinedDefault,
    required this.outlinedHover,
    required this.outlinedFocused,
    required this.outlinedDisabled,
    required this.buttonLineDefault,
    required this.outlinedBorderDisabled,
  });

  /// {@macro app_button_theme}
  factory AppButtonTheme.light() {
    return AppButtonTheme(
      primaryText: AppColors.white,
      primaryTextOnBrand: AppColors.black,
      primaryDefault: AppColors.brand.shade500,
      primaryHover: AppColors.brand.shade600,
      primaryFocused: AppColors.brand.shade700,
      primaryDisabled: AppColors.brand.shade800,
      secondaryText: AppColors.black,
      secondaryDefault: AppColors.grey.shade500,
      secondaryHover: AppColors.grey.shade600,
      secondaryFocused: AppColors.grey.shade700,
      secondaryDisabled: AppColors.grey.shade800,
      outlinedText: AppColors.black,
      outlinedDefault: AppColors.transparent,
      outlinedHover: AppColors.grey.shade200,
      outlinedFocused: AppColors.grey.shade300,
      outlinedDisabled: AppColors.grey.shade400,
      buttonLineDefault: AppColors.grey.shade500,
      outlinedBorderDisabled: AppColors.grey.shade600,
    );
  }

  /// The color of the primary text.
  final Color primaryText;

  /// The color of the primary text on brand.
  final Color primaryTextOnBrand;

  /// The color of the primary button default.
  final Color primaryDefault;

  /// The color of the primary button hover.
  final Color primaryHover;

  /// The color of the primary button focused.
  final Color primaryFocused;

  /// The color of the primary button disabled.
  final Color primaryDisabled;

  /// The color of the secondary text.
  final Color secondaryText;

  /// The color of the secondary button default.
  final Color secondaryDefault;

  /// The color of the secondary button hover.
  final Color secondaryHover;

  /// The color of the secondary button focused.
  final Color secondaryFocused;

  /// The color of the secondary button disabled.
  final Color secondaryDisabled;

  /// The color of the outlined text.
  final Color outlinedText;

  /// The color of the outlined button default.
  final Color outlinedDefault;

  /// The color of the outlined button hover.
  final Color outlinedHover;

  /// The color of the outlined button focused.
  final Color outlinedFocused;

  /// The color of the outlined button disabled.
  final Color outlinedDisabled;

  /// The color of the button line default.
  final Color buttonLineDefault;

  /// The color of the outlined border disabled.
  final Color outlinedBorderDisabled;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    Color? primaryText,
    Color? primaryTextOnBrand,
    Color? primaryDefault,
    Color? primaryHover,
    Color? primaryFocused,
    Color? primaryDisabled,
    Color? secondaryText,
    Color? secondaryDefault,
    Color? secondaryHover,
    Color? secondaryFocused,
    Color? secondaryDisabled,
    Color? outlinedText,
    Color? outlinedDefault,
    Color? outlinedHover,
    Color? outlinedFocused,
    Color? outlinedDisabled,
    Color? buttonLineDefault,
    Color? outlinedBorderDisabled,
  }) {
    return AppButtonTheme(
      primaryText: primaryText ?? this.primaryText,
      primaryTextOnBrand: primaryTextOnBrand ?? this.primaryTextOnBrand,
      primaryDefault: primaryDefault ?? this.primaryDefault,
      primaryHover: primaryHover ?? this.primaryHover,
      primaryFocused: primaryFocused ?? this.primaryFocused,
      primaryDisabled: primaryDisabled ?? this.primaryDisabled,
      secondaryText: secondaryText ?? this.secondaryText,
      secondaryDefault: secondaryDefault ?? this.secondaryDefault,
      secondaryHover: secondaryHover ?? this.secondaryHover,
      secondaryFocused: secondaryFocused ?? this.secondaryFocused,
      secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,
      outlinedText: outlinedText ?? this.outlinedText,
      outlinedDefault: outlinedDefault ?? this.outlinedDefault,
      outlinedHover: outlinedHover ?? this.outlinedHover,
      outlinedFocused: outlinedFocused ?? this.outlinedFocused,
      outlinedDisabled: outlinedDisabled ?? this.outlinedDisabled,
      buttonLineDefault: buttonLineDefault ?? this.buttonLineDefault,
      outlinedBorderDisabled: outlinedBorderDisabled ?? this.outlinedBorderDisabled,
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(
    covariant ThemeExtension<AppButtonTheme>? other,
    double t,
  ) {
    if (other is! AppButtonTheme) {
      return this;
    }

    return AppButtonTheme(
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      primaryTextOnBrand: Color.lerp(primaryTextOnBrand, other.primaryTextOnBrand, t)!,
      primaryDefault: Color.lerp(primaryDefault, other.primaryDefault, t)!,
      primaryHover: Color.lerp(primaryHover, other.primaryHover, t)!,
      primaryFocused: Color.lerp(primaryFocused, other.primaryFocused, t)!,
      primaryDisabled: Color.lerp(primaryDisabled, other.primaryDisabled, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      secondaryDefault: Color.lerp(secondaryDefault, other.secondaryDefault, t)!,
      secondaryHover: Color.lerp(secondaryHover, other.secondaryHover, t)!,
      secondaryFocused: Color.lerp(secondaryFocused, other.secondaryFocused, t)!,
      secondaryDisabled: Color.lerp(secondaryDisabled, other.secondaryDisabled, t)!,
      outlinedText: Color.lerp(outlinedText, other.outlinedText, t)!,
      outlinedDefault: Color.lerp(outlinedDefault, other.outlinedDefault, t)!,
      outlinedHover: Color.lerp(outlinedHover, other.outlinedHover, t)!,
      outlinedFocused: Color.lerp(outlinedFocused, other.outlinedFocused, t)!,
      outlinedDisabled: Color.lerp(outlinedDisabled, other.outlinedDisabled, t)!,
      buttonLineDefault: Color.lerp(buttonLineDefault, other.buttonLineDefault, t)!,
      outlinedBorderDisabled: Color.lerp(outlinedBorderDisabled, other.outlinedBorderDisabled, t)!,
    );
  }
}