import 'package:flutter/material.dart';
import 'package:islamic_app/view/screens/quran/data/quran_data.dart';
import 'package:islamic_app/view/screens/quran/screens/sura_details_screen.dart';
import 'package:islamic_app/view/screens/quran/widgets/custom_table_row.dart';

class SuraTableContent extends StatelessWidget {
  const SuraTableContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: QuranData.allSuras.length,
      itemBuilder: (context, index) {
        final sura = QuranData.allSuras[index];
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
          ),
        );
      },
    );
  }
}
