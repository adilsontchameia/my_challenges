import 'dart:async';

import 'package:ecommerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_line.dart';
import 'widgets/breakfast_image.dart';
import 'widgets/headphones_image.dart';
import 'widgets/logo_and_description.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  //Timer for splash screen
  startTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(
        duration, (() => Navigator.pushReplacementNamed(context, onboardPage)));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Center(
        child: Stack(
          children: [
            const BreakFastImage(),
            const HeadPhonesImage(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                LogoAndDescription(),
              ],
            ),
            const BottomLine()
          ],
        ),
      ),
    );
  }
}
