import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_paths.dart';
import 'package:islamic_app/core/constants/constant_strings.dart';

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
    );
  }
}
