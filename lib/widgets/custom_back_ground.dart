import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/app_paths.dart';
import 'package:islamic_app/core/constants/app_strings.dart';

class CustomBackGround extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  const CustomBackGround({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppPaths.lightBackGroundImage),
        ),
      ),
      child: Scaffold(
        // to display body after app bar
        extendBodyBehindAppBar: true,
        // app bar using the default theme
        appBar: AppBar(title: Text(AppStrings.islamiLabel)),
        body: SafeArea(bottom: false, child: body),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
