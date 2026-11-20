import 'package:flutter/material.dart';
import 'package:islamic_app/core/constants/constant_paths.dart';
import 'package:islamic_app/view/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goHome();
  }

  Future<void> _goHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(ConstantPaths.lightSplashScreen),
        ),
      ),
    );
  }
}

// Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.asset(ConstantPaths.lightSplashScreen, fit: BoxFit.cover),
//         ],
//       ),
//     );
