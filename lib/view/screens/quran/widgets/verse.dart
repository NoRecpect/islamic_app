import 'package:flutter/material.dart';

class Verse extends StatelessWidget {
  final String verse;
  const Verse({super.key, required this.verse});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        verse,
        style: theme.textTheme.bodyLarge,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
