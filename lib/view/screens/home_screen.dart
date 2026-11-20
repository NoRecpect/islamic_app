import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_paths.dart';
import 'package:islamic_app/core/constants/constant_strings.dart';
import 'package:islamic_app/view/screens/hadith/hadith_screen.dart';
import 'package:islamic_app/view/screens/quran/quran_screen.dart';
import 'package:islamic_app/view/screens/radio/radio_screen.dart';
import 'package:islamic_app/view/screens/sebha/sebha_screen.dart';
import 'package:islamic_app/view/screens/settings/setting_screen.dart';
import 'package:islamic_app/view_models/home_screen_view_model.dart';
import 'package:islamic_app/widgets/custom_back_ground.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home";
  HomeScreen({super.key});

  final vm = HomeScreenViewModel();

  @override
  Widget build(BuildContext context) {
    print("rebuild that is the vm address :${vm.hashCode} ");
    return ChangeNotifierProvider<HomeScreenViewModel>(
      create: (context) => vm,
      child: Stack(
        children: [
          CustomBackGround(),
          Consumer<HomeScreenViewModel>(
            builder: (context, vm, child) {
              return Scaffold(
                body: vm.screens[vm.currentIndex],
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: vm.currentIndex,
                  onTap: (index) {
                    vm.changeCurrentIndex(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      label: ConstantStrings.quranLabel,
                      icon: ImageIcon(AssetImage(ConstantPaths.quranIcon)),
                    ),
                    BottomNavigationBarItem(
                      label: ConstantStrings.sebhaLabel,
                      icon: ImageIcon(AssetImage(ConstantPaths.sebhaIcon)),
                    ),
                    BottomNavigationBarItem(
                      label: ConstantStrings.hadithLabel,
                      icon: ImageIcon(AssetImage(ConstantPaths.hadithIcon)),
                    ),
                    BottomNavigationBarItem(
                      label: ConstantStrings.radioLabel,
                      icon: ImageIcon(AssetImage(ConstantPaths.radioIcon)),
                    ),
                    BottomNavigationBarItem(
                      label: ConstantStrings.settingLabel,
                      icon: ImageIcon(AssetImage(ConstantPaths.settingIcon)),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
