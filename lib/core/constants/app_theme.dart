import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static final outline = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );

  static final ThemeData light = ThemeData(
      fontFamily: 'JFFlat',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.pumpkinorange,
        shadow: AppColors.primaryLight,
      ),
      inputDecorationTheme: outline);

  static final ThemeData dark = ThemeData(
    fontFamily: 'JFFlat',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.dark().copyWith(secondary: AppColors.accent),
  );
}
