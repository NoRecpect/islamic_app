import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_sizes.dart';
import 'package:islamic_app/core/constants/app_colors.dart';
import 'package:islamic_app/core/constants/app_strings.dart';
import 'package:islamic_app/core/theme/app_text_theme.dart';

ThemeData getLightTheme() {
  return ThemeData(
    appBarTheme: _lightAppBarTheme(),
    textTheme: AppTextTheme.getTextTheme(textColor: AppColors.textPrimary),
    iconTheme: const IconThemeData(color: AppColors.textPrimary, size: 20),
    scaffoldBackgroundColor: AppColors.transparent,
    bottomNavigationBarTheme: _bottomNavigationBarTheme(),
  );
}

BottomNavigationBarThemeData _bottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    unselectedIconTheme: IconThemeData(size: 30),
    selectedIconTheme: IconThemeData(size: 50),

    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.primary,
    selectedItemColor: AppColors.black,
    unselectedItemColor: AppColors.white,
  );
}

AppBarTheme _lightAppBarTheme() {
  return const AppBarTheme(
    iconTheme: IconThemeData(color: AppColors.black, weight: 30, size: 30),
    backgroundColor: AppColors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontFamily: AppStrings.elmesiriFont,
      color: AppColors.black,
      fontSize: AppSizes.fontTitle,
      fontWeight: FontWeight.bold,
    ),
  );
}
