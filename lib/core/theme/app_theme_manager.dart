import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_colors.dart';
import 'package:islamic_app/core/constants/constant_sizes.dart';
import 'package:islamic_app/core/constants/constant_strings.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ConstantColors.lightPrimaryBlack,
        weight: 30,
        size: 30,
      ),
      backgroundColor: ConstantColors.transparentColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: ConstantStrings.elmesiriFont,
        color: ConstantColors.lightPrimaryBlack,
        fontSize: ConstantSizes.textLargeSize,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: ConstantStrings.elmesiriFont,
        color: ConstantColors.lightPrimaryBlack,
        fontSize: ConstantSizes.textLargeSize,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: ConstantStrings.elmesiriFont,
        color: ConstantColors.lightPrimaryBlack,
        fontSize: ConstantSizes.textMediumSize,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontFamily: ConstantStrings.elmesiriFont,
        color: ConstantColors.lightPrimaryBlack,
        fontSize: ConstantSizes.textSmallSize,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconTheme: IconThemeData(color: ConstantColors.lightPrimaryBlack, size: 20),

    scaffoldBackgroundColor: ConstantColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(size: 30),
      selectedIconTheme: IconThemeData(size: 50),

      type: BottomNavigationBarType.fixed,
      backgroundColor: ConstantColors.lightPrimaryColor,
      selectedItemColor: ConstantColors.lightPrimaryBlack,
      unselectedItemColor: ConstantColors.bottomNavigationBarUnelectedIcon,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ConstantColors.transparentColor,
  );
}
