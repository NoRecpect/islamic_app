import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_paths.dart';
import 'package:islamic_app/core/constants/app_strings.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          label: AppStrings.quranLabel,
          icon: ImageIcon(AssetImage(AppPaths.quranIcon)),
        ),
        BottomNavigationBarItem(
          label: AppStrings.sebhaLabel,
          icon: ImageIcon(AssetImage(AppPaths.sebhaIcon)),
        ),
        BottomNavigationBarItem(
          label: AppStrings.hadithLabel,
          icon: ImageIcon(AssetImage(AppPaths.hadithIcon)),
        ),
        BottomNavigationBarItem(
          label: AppStrings.radioLabel,
          icon: ImageIcon(AssetImage(AppPaths.radioIcon)),
        ),
        BottomNavigationBarItem(
          label: AppStrings.settingLabel,
          icon: ImageIcon(AssetImage(AppPaths.settingIcon)),
        ),
      ],
    );
  }
}
