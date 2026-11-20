import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_colors.dart';
import 'package:islamic_app/core/constants/constant_sizes.dart';
import 'package:islamic_app/core/constants/constant_strings.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: ConstantStrings.elmesiriFont,
        color: ConstantColors.lightPrimaryBlack,
        fontSize: ConstantSizes.textLargeSize,
        fontWeight: FontWeight.bold,
      ),
    ),

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
