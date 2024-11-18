import 'package:flutter/material.dart';

/// {@template app_colors}
/// Colors class for themes which provides direct access with static fields.
/// {@endtemplate}
class AppColors {
  AppColors._();

  /// The color white
  static const white = Colors.white;

  /// The color black
  static const black = Colors.black;

  /// The color transparent
  static const transparent = Colors.transparent;

  /// Brand color palette.
  static const brand = MaterialColor(
    0xFF347AF6,
    {
      50: Color(0xFFF0F5FF),
      100: Color(0xFFE0ECFF),
      150: Color(0xFFD3E1FB),
      200: Color(0xFFBDD3F9),
      250: Color(0xFF9FBFF9),
      300: Color(0xFF81ACF9),
      400: Color(0xFF5A93F9),
      500: Color(0xFF347AF6),
      600: Color(0xFF1559D1),
      700: Color(0xFF174EAF),
      800: Color(0xFF1D4387),
      900: Color(0xFF163367),
    },
  );

  /// Light gray color palette.
  static const grayLight = MaterialColor(
    0xFF667085,
    {
      50: Color(0xFFFCFCFD),
      100: Color(0xFFF9FAFB),
      150: Color(0xFFF2F4F7),
      200: Color(0xFFEAECF0),
      250: Color(0xFFD0D5DD),
      300: Color(0xFF98A2B3),
      400: Color(0xFF667085),
      500: Color(0xFF475467),
      600: Color(0xFF344054),
      700: Color(0xFF182230),
      800: Color(0xFF101828),
      900: Color(0xFF0C111D),
    },
  );

  /// Dark gray color palette.
  static const grayDark = MaterialColor(
    0xFF85888E,
    {
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F6),
      150: Color(0xFFF0F1F1),
      200: Color(0xFFECECED),
      250: Color(0xFFCECFD2),
      300: Color(0xFF94969C),
      400: Color(0xFF85888E),
      500: Color(0xFF61646C),
      600: Color(0xFF333741),
      700: Color(0xFF1F242F),
      800: Color(0xFF161B26),
      900: Color(0xFF0C111D),
    },
  );

  /// Grey color palette.
  static const grey = MaterialColor(
    0xFF6B7280,
    {
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      150: Color(0xFFE5E7EB),
      200: Color(0xFFD1D5DB),
      250: Color(0xFF9CA3AF),
      300: Color(0xFF6B7280),
      400: Color(0xFF4B5563),
      500: Color(0xFF374151),
      600: Color(0xFF1F2937),
      700: Color(0xFF111827),
      800: Color(0xFF0F172A),
      900: Color(0xFF0A0E14),
    },
  );

  /// Success color palette.
  static const success = MaterialColor(
    0xFF28A745,
    {
      50: Color(0xFFE6F4EA),
      100: Color(0xFFCCE9D5),
      150: Color(0xFFB3DEC0),
      200: Color(0xFF99D3AB),
      250: Color(0xFF80C896),
      300: Color(0xFF66BD81),
      400: Color(0xFF4DB26C),
      500: Color(0xFF339757),
      600: Color(0xFF287A45),
      700: Color(0xFF1E5D33),
      800: Color(0xFF144021),
      900: Color(0xFF0A2310),
    },
  );

  /// Error color palette.
  static const error = MaterialColor(
    0xFFDC3545,
    {
      50: Color(0xFFFDECEA),
      100: Color(0xFFFBD8D5),
      150: Color(0xFFF9C4C0),
      200: Color(0xFFF7B0AB),
      250: Color(0xFFF59C96),
      300: Color(0xFFF38881),
      400: Color(0xFFF1746C),
      500: Color(0xFFEF6057),
      600: Color(0xFFDC3545),
      700: Color(0xFFB02A37),
      800: Color(0xFF84202A),
      900: Color(0xFF58151C),
    },
  );
}
