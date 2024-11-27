import 'package:flutter/material.dart';
import 'package:personal_finance_manager/core/app_styles/app_colors.dart';

/// {@template app_input_theme}
/// Theme class which provides configuration of [AppTextField]
/// {@endtemplate}
class AppInputTheme extends ThemeExtension<AppInputTheme> {
  /// {@macro app_input_theme}
  const AppInputTheme({
    required this.defaultText,
    required this.focusedOnBrand,
    required this.focusedTextDefault,
    required this.errorTextDefault,
    required this.successTextDefault,
    required this.disabledText,
    required this.borderDefault,
    required this.borderHover,
    required this.borderFocused,
    required this.borderError,
    required this.borderSuccess,
    required this.borderDisabled,
    required this.defaultColor,
    required this.disabledColor,
  });

  /// {@macro app_input_theme}
  factory AppInputTheme.light() {
    return AppInputTheme(
      defaultText: AppColors.grayLight.shade400,
      focusedOnBrand: AppColors.brand.shade500,
      focusedTextDefault: AppColors.grayLight.shade600,
      errorTextDefault: AppColors.error,
      successTextDefault: AppColors.success,
      disabledText: AppColors.grayLight[250]!,
      borderDefault: AppColors.grayLight[250]!,
      borderHover: AppColors.grayLight.shade300,
      borderFocused: AppColors.brand.shade500,
      borderError: AppColors.error,
      borderSuccess: AppColors.success,
      borderDisabled: AppColors.grayLight.shade200,
      defaultColor: AppColors.white,
      disabledColor: AppColors.grayLight.shade100,
    );
  }

  /// {@macro app_input_theme}
  factory AppInputTheme.dark() {
    return AppInputTheme(
      defaultText: AppColors.grayLight.shade400,
      focusedOnBrand: AppColors.brand.shade500,
      focusedTextDefault: AppColors.grayLight.shade600,
      errorTextDefault: AppColors.error,
      successTextDefault: AppColors.success,
      disabledText: AppColors.grayLight[250]!,
      borderDefault: AppColors.grayLight[250]!,
      borderHover: AppColors.grayLight.shade300,
      borderFocused: AppColors.brand.shade500,
      borderError: AppColors.error,
      borderSuccess: AppColors.success,
      borderDisabled: AppColors.grayLight.shade200,
      defaultColor: AppColors.white,
      disabledColor: AppColors.grayLight.shade100,
    );
  }

  /// The default text color.
  final Color defaultText;

  /// The text color when focused on brand.
  final Color focusedOnBrand;

  /// The text color when focused.
  final Color focusedTextDefault;

  /// The text color when error.
  final Color errorTextDefault;

  /// The text color when success.
  final Color successTextDefault;

  /// The text color when disabled.
  final Color disabledText;

  /// The default border color.
  final Color borderDefault;

  /// The border color when hovered.
  final Color borderHover;

  /// The border color when focused.
  final Color borderFocused;

  /// The border color when error.
  final Color borderError;

  /// The border color when success.
  final Color borderSuccess;

  /// The border color when disabled.
  final Color borderDisabled;

  /// The default color.
  final Color defaultColor;

  /// The disabled color.
  final Color disabledColor;

  @override
  ThemeExtension<AppInputTheme> copyWith({
    Color? defaultText,
    Color? focusedOnBrand,
    Color? focusedTextDefault,
    Color? errorTextDefault,
    Color? successTextDefault,
    Color? disabledText,
    Color? borderDefault,
    Color? borderHover,
    Color? borderFocused,
    Color? borderError,
    Color? borderSuccess,
    Color? borderDisabled,
    Color? defaultColor,
    Color? disabledColor,
  }) {
    return AppInputTheme(
      defaultText: defaultText ?? this.defaultText,
      focusedOnBrand: focusedOnBrand ?? this.focusedOnBrand,
      focusedTextDefault: focusedTextDefault ?? this.focusedTextDefault,
      errorTextDefault: errorTextDefault ?? this.errorTextDefault,
      successTextDefault: successTextDefault ?? this.successTextDefault,
      disabledText: disabledText ?? this.disabledText,
      borderDefault: borderDefault ?? this.borderDefault,
      borderHover: borderHover ?? this.borderHover,
      borderFocused: borderFocused ?? this.borderFocused,
      borderError: borderError ?? this.borderError,
      borderSuccess: borderSuccess ?? this.borderSuccess,
      borderDisabled: borderDisabled ?? this.borderDisabled,
      defaultColor: defaultColor ?? this.defaultColor,
      disabledColor: disabledColor ?? this.disabledColor,
    );
  }

  @override
  ThemeExtension<AppInputTheme> lerp(
    covariant ThemeExtension<AppInputTheme>? other,
    double t,
  ) {
    if (other is! AppInputTheme) {
      return this;
    }

    return AppInputTheme(
      defaultText: Color.lerp(defaultText, other.defaultText, t)!,
      focusedOnBrand: Color.lerp(focusedOnBrand, other.focusedOnBrand, t)!,
      focusedTextDefault: Color.lerp(
        focusedTextDefault,
        other.focusedTextDefault,
        t,
      )!,
      errorTextDefault: Color.lerp(
        errorTextDefault,
        other.errorTextDefault,
        t,
      )!,
      successTextDefault: Color.lerp(
        successTextDefault,
        other.successTextDefault,
        t,
      )!,
      disabledText: Color.lerp(disabledText, other.disabledText, t)!,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t)!,
      borderHover: Color.lerp(borderHover, other.borderHover, t)!,
      borderFocused: Color.lerp(borderFocused, other.borderFocused, t)!,
      borderError: Color.lerp(borderError, other.borderError, t)!,
      borderSuccess: Color.lerp(borderSuccess, other.borderSuccess, t)!,
      borderDisabled: Color.lerp(borderDisabled, other.borderDisabled, t)!,
      defaultColor: Color.lerp(defaultColor, other.defaultColor, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
    );
  }
}