import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_colors.dart';

class CustomTableRow extends StatelessWidget {
  final String rightText;
  final String leftText;
  final TextStyle? style;

  const CustomTableRow({
    super.key,
    required this.rightText,
    required this.leftText,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = style ?? Theme.of(context).textTheme.displayMedium;

    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                leftText,
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
          ),
          const VerticalDivider(
            thickness: 3,
            width: 3,
            color: ConstantColors.lightPrimaryColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                rightText,
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
