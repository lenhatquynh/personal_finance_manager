import 'package:flutter/material.dart';
import 'package:personal_finance_manager/core/app_themes/app_button_theme.dart';
import 'package:personal_finance_manager/core/app_themes/app_input_theme.dart';
import 'package:personal_finance_manager/core/app_themes/app_typography_theme.dart';

/// {@template app_theme}
/// Configuration class which collects all Themes of app together and provides
/// them as a single instance
/// {@endtemplate}
class AppTheme extends ThemeExtension<AppTheme> {
  /// {@macro app_theme}
  const AppTheme({
    required this.appButtonTheme,
    required this.appInputTheme,
    required this.appTypographyTheme,
  });

  /// {@macro app_theme}
  factory AppTheme.light() {
    return AppTheme(
      appButtonTheme: AppButtonTheme.light(),
      appInputTheme: AppInputTheme.light(),
      appTypographyTheme: AppRegularTypography().copyWith(),
    );
  }

  /// [AppButtonTheme] instance provides configuration of buttons
  final ThemeExtension<AppButtonTheme> appButtonTheme;

  /// [AppInputTheme] instance provides configuration of [AppTextField]
  final ThemeExtension<AppInputTheme> appInputTheme;

  /// [AppTypographyTheme] instance provides configuration of [AppTypographyTheme]
  final ThemeExtension<AppTypographyTheme> appTypographyTheme;


  @override
  ThemeExtension<AppTheme> copyWith({
    ThemeExtension<AppButtonTheme>? appButtonTheme,
    ThemeExtension<AppInputTheme>? appInputTheme,
    ThemeExtension<AppTypographyTheme>? appTypographyTheme
  }) {
    return AppTheme(
      appButtonTheme: appButtonTheme ?? this.appButtonTheme,
      appInputTheme: appInputTheme ?? this.appInputTheme,
      appTypographyTheme: appTypographyTheme ?? this.appTypographyTheme,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
    covariant ThemeExtension<AppTheme>? other,
    double t,
  ) {
    if (other is! AppTheme) {
      return this;
    }

    return AppTheme(
      appButtonTheme: appButtonTheme.lerp(other.appButtonTheme, t),
      appInputTheme: appInputTheme.lerp(other.appInputTheme, t),
      appTypographyTheme: appTypographyTheme.lerp(other.appTypographyTheme, t),
    );
  }
}