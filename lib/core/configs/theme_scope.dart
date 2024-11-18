import 'package:flutter/material.dart';
import 'package:personal_finance_manager/core/configs/app_theme.dart';

/// {@template theme_scope}
/// InheritedWidget provides [AppTheme] for app
/// {@endtemplate}
class ThemeScope extends InheritedWidget {
  /// {@macro theme_scope}
  const ThemeScope({
    super.key,
    required super.child,
    required this.themeMode,
    required this.appTheme,
  });

  /// The current theme mode.
  final ThemeMode themeMode;

  /// The current app theme.
  final AppTheme appTheme;

  /// The current theme.
  static ThemeScope of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ThemeScope>();
    assert(result != null, 'No ThemeScope found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ThemeScope oldWidget) => true;
}