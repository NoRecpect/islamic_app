import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_colors.dart';
import 'package:islamic_app/core/constants/constant_strings.dart';
import 'package:islamic_app/view/screens/quran/widgets/custom_table_row.dart';

class SuraTableHeader extends StatelessWidget {
  const SuraTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          color: ConstantColors.lightPrimaryColor,
          thickness: 3,
          height: 3,
        ),

        CustomTableRow(
          rightText: ConstantStrings.suraName,
          leftText: ConstantStrings.ayatNumber,
        ),

        Divider(
          color: ConstantColors.lightPrimaryColor,
          thickness: 3,
          height: 3,
        ),
      ],
    );
  }
}
