import 'package:flutter/material.dart';
import 'package:personal_finance_manager/theme/configs/app_button_theme.dart';
import 'package:personal_finance_manager/theme/configs/app_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class PrimaryTextButton extends AppTextButton {
  /// {@macro primary_text_button}
  const PrimaryTextButton({
    super.key,
    required super.label,
    super.onTap,
    super.leading,
    super.trailing,
    super.appButtonSize,
  });

  @override
  Color backgroundColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.buttonTheme.primaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.buttonTheme.primaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.buttonTheme.primaryHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }
}

extension on BuildContext {
  AppButtonTheme get buttonTheme => Theme.of(this).extension<AppButtonTheme>()!;
}
