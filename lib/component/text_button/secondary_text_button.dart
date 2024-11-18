import 'package:flutter/material.dart';
import 'package:personal_finance_manager/theme/configs/app_button_theme.dart';
import 'package:personal_finance_manager/theme/configs/app_text_button.dart';


/// {@template secondary_text_button}
/// A custom secondary text button widget that adapts to the platform.
/// {@endtemplate}
///
class SecondaryTextButton extends AppTextButton {
  /// {@macro secondary_text_button}
  const SecondaryTextButton({
    super.key,
    required super.label,
    super.onTap,
    super.leading,
    super.trailing,
    super.appButtonSize,
  });

  @override
  Color backgroundColor(BuildContext context) {
    return context.buttonTheme.secondaryDefault;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.buttonTheme.secondaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.buttonTheme.secondaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.buttonTheme.secondaryHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryTextOnBrand;
  }
}

extension on BuildContext {
  AppButtonTheme get buttonTheme => Theme.of(this).extension<AppButtonTheme>()!;
}
