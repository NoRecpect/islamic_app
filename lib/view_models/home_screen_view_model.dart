import 'package:flutter/material.dart';
import 'package:islamic_app/view/screens/hadith/hadith_screen.dart';
import 'package:islamic_app/view/screens/quran/quran_screen.dart';
import 'package:islamic_app/view/screens/radio/radio_screen.dart';
import 'package:islamic_app/view/screens/sebha/sebha_screen.dart';
import 'package:islamic_app/view/screens/settings/setting_screen.dart';

class HomeScreenViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  void changeCurrentIndex(int index) {
    if (currentIndex == index) return;
    _currentIndex = index;
    notifyListeners();
    print(currentIndex);
  }

  List<Widget> screens = <Widget>[
    QuranScreen(),
    SebhaScreen(),
    HadithScreen(),
    RadioScreen(),
    SettingScreen(),
  ];
}
