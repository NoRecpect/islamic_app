import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_sizes.dart';

import 'package:islamic_app/core/constants/app_strings.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme getTextTheme({required Color textColor}) {
    return TextTheme(
      bodyMedium: TextStyle(
        fontFamily: AppStrings.interFont,
        color: textColor,
        fontSize: AppSizes.fontLarge,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontFamily: AppStrings.interFont,
        color: textColor,
        fontSize: AppSizes.bodyLarge,
        fontWeight: FontWeight.w300,
        height: 1.5,
      ),
      headlineLarge: TextStyle(
        fontFamily: AppStrings.elmesiriFont,
        color: textColor,
        fontSize: AppSizes.fontLarge,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: TextStyle(
        fontFamily: AppStrings.elmesiriFont,
        color: textColor,
        fontSize: AppSizes.fontLarge,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: TextStyle(
        fontFamily: AppStrings.elmesiriFont,
        color: textColor,
        fontSize: AppSizes.fontLarge,
        fontWeight: FontWeight.w500,
      ),

      titleLarge: TextStyle(
        fontFamily: AppStrings.interFont,
        color: textColor,
        fontSize: AppSizes.fontTitle,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        fontFamily: AppStrings.interFont,
        color: textColor,
        fontSize: AppSizes.fontLarge,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: AppStrings.elmesiriFont,
        color: textColor,
        fontSize: AppSizes.fontMedium,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontFamily: AppStrings.elmesiriFont,
        color: textColor,
        fontSize: AppSizes.fontSmall,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
