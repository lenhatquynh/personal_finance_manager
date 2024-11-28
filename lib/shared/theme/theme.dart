import 'package:flutter/material.dart';
import 'package:personal_finance_manager/shared/styles/colors.dart';

/// Currently, the app has two themes: light and dark. but I just implement dark mode first.
final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.darkSurface,
    onPrimary: AppColors.white,
    secondary: AppColors.grayDark[500]!,
    onSecondary: AppColors.white,
    tertiary: AppColors.grayDark[300]!,
    onTertiary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.black,
    surface: AppColors.darkSurface,
    onSurface: AppColors.white,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.darkSurface,
    onPrimary: AppColors.white,
    secondary: AppColors.grayDark[500]!,
    onSecondary: AppColors.white,
    tertiary: AppColors.grayDark[300]!,
    onTertiary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.black,
    surface: AppColors.darkSurface,
    onSurface: AppColors.white,
  ),
);
