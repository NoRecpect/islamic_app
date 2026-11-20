import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28),
      padding: const EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 30),
      height: size.height * 3 / 4,
      width: size.width,

      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),

        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
