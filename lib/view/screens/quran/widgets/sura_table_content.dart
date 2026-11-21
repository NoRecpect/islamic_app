import 'package:flutter/material.dart';
import 'package:islamic_app/data/app_data.dart';
import 'package:islamic_app/view/screens/quran/screens/sura_details_screen.dart';
import 'package:islamic_app/view/screens/quran/widgets/custom_table_row.dart';

class SuraTableContent extends StatelessWidget {
  const SuraTableContent({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView.builder(
      itemCount: AppData.allSuras.length,
      itemBuilder: (context, index) {
        final sura = AppData.allSuras[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              SuraDetailsScreen.routName,
              arguments: sura,
            );
          },
          child: CustomTableRow(
            rightText: sura.name,
            leftText: sura.versesCount.toString(),
            style: theme.textTheme.displayMedium,
          ),
        );
      },
    );
  }
}
