import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_paths.dart';
import 'package:islamic_app/core/constants/constant_strings.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("width is : ${size.width}");
    print("hight is : ${size.height}");
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(ConstantPaths.lightBackGroundImage, fit: BoxFit.cover),
        Positioned(
          top: size.height * 0.05,
          child: SizedBox(
            width: size.width,
            child: Text(
              ConstantStrings.islamiLabel,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ),
      ],
    );
  }
}
