import 'package:flutter/material.dart';

import 'package:islamic_app/core/constants/constant_paths.dart';

import 'package:islamic_app/view/screens/quran/widgets/sura_table_content.dart';
import 'package:islamic_app/view/screens/quran/widgets/sura_table_header.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          ConstantPaths.quranLightIcon,
          height: 175,
          width: 175,
          cacheHeight: 350,
          cacheWidth: 350,
        ),
        const SizedBox(height: 10),
        const SuraTableHeader(),
        const Expanded(child: SuraTableContent()),
      ],
    );
  }
}
