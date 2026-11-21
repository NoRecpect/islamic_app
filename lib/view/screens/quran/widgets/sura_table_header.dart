import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_colors.dart';
import 'package:islamic_app/core/constants/app_strings.dart';
import 'package:islamic_app/view/screens/quran/widgets/custom_table_row.dart';

class SuraTableHeader extends StatelessWidget {
  const SuraTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        const Divider(color: AppColors.primary, thickness: 3, height: 3),
        CustomTableRow(
          rightText: AppStrings.suraName,
          leftText: AppStrings.ayatNumber,
          style: theme.textTheme.headlineSmall,
        ),

        const Divider(color: AppColors.primary, thickness: 3, height: 3),
      ],
    );
  }
}
