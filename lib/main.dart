import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/app_theme_manager.dart';
import 'package:islamic_app/view/screens/home_screen.dart';
import 'package:islamic_app/view/screens/quran/screens/sura_details_screen.dart';
import 'package:islamic_app/view/splash_screen.dart';

void main() {
  runApp(const IslamicApp());
}

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
      },
      theme: AppThemeManager.lightTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
