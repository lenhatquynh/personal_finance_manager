import 'package:flutter/material.dart';
import 'package:personal_finance_manager/core/app_themes/app_button_theme.dart';
import 'package:personal_finance_manager/core/app_themes/app_input_theme.dart';
import 'package:personal_finance_manager/core/configs/app_theme.dart';
import 'package:personal_finance_manager/core/app_themes/app_typography_theme.dart';

/// An extension on [BuildContext] that provides access to the current theme.
extension ThemeExt on BuildContext {
  /// The current theme.
  ThemeData get theme => Theme.of(this);

  // The current button theme
  AppButtonTheme get buttonTheme =>
      theme.extension<AppTheme>()!.appButtonTheme as AppButtonTheme;

  // The current app inputTheme.
  AppInputTheme get inputTheme =>
      theme.extension<AppTheme>()!.appInputTheme as AppInputTheme;
      
  // The current app typographyTheme.
  AppTypographyTheme get typographyTheme =>
      theme.extension<AppTheme>()!.appTypographyTheme as AppTypographyTheme;
}