import 'package:flutter/material.dart';
import 'package:graduation_project1/core/constants/app_colors.dart';
import 'package:graduation_project1/core/constants/app_fonts.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodySmall: AppFonts.hint,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: Colors.white,
      secondary: AppColors.secondary,
      onSecondary: Colors.white,
      tertiary: AppColors.tertiary,
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.background,
      onSurface: Colors.white,
    ),
  );
}
