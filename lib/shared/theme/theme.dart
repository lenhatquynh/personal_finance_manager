import 'package:flutter/material.dart';
import 'package:personal_finance_manager/shared/styles/color.dart';

/// Currently, the app has two themes: light and dark. but I just implement dark mode first.
final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColor.darkSurface,
    onPrimary: AppColor.white,
    secondary: AppColor.grayDark[500]!,
    onSecondary: AppColor.white,
    tertiary: AppColor.grayDark[300]!,
    onTertiary: AppColor.white,
    error: AppColor.error,
    onError: AppColor.black,
    surface: AppColor.darkSurface,
    onSurface: AppColor.white,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColor.darkSurface,
    onPrimary: AppColor.white,
    secondary: AppColor.grayDark[500]!,
    onSecondary: AppColor.white,
    tertiary: AppColor.grayDark[300]!,
    onTertiary: AppColor.white,
    error: AppColor.error,
    onError: AppColor.black,
    surface: AppColor.darkSurface,
    onSurface: AppColor.white,
  ),
);
