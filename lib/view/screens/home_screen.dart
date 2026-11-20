import 'package:flutter/material.dart';

import 'package:islamic_app/view/screens/hadith/hadith_screen.dart';
import 'package:islamic_app/view/screens/quran/screens/quran_screen.dart';
import 'package:islamic_app/view/screens/radio/radio_screen.dart';
import 'package:islamic_app/view/screens/sebha/sebha_screen.dart';
import 'package:islamic_app/view/screens/settings/setting_screen.dart';

import 'package:islamic_app/widgets/custom_back_ground.dart';
import 'package:islamic_app/widgets/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> screens = <Widget>[
    QuranScreen(),
    SebhaScreen(),
    HadithScreen(),
    RadioScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackGround(
      body: screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
