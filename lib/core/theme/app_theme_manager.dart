import 'package:flutter/material.dart';

import 'package:islamic_app/core/theme/light_theme.dart';

class AppThemeManager {
  AppThemeManager._();
  static ThemeData lightTheme = getLightTheme();
  static ThemeData darkTheme = ThemeData();
}
