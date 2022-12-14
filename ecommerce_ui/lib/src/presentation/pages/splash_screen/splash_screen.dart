import 'dart:async';
import 'dart:math' as math;

import 'package:ecommerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();

    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  startTimer() async {
    var duration = const Duration(seconds:2 );
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, onboardPage);
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  fit: BoxFit.fitHeight,
                  height: 700.0,
                  width: double.infinity,
                  'assets/breakfast.png',
                ),
              ),
            ),
            Transform.rotate(
              angle: -0.2,
              alignment: Alignment.centerLeft,
              child: Opacity(
                opacity: 0.7,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    height: 570,
                    'assets/headphone_purple.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 150.0),
                    SizedBox(
                      child: Image.asset(height: 100.0, 'assets/app_logo.png'),
                    ),
                    Text(
                      'Loren Ipsun Loren Ipsun Loren Ipsun Loren Ipsun Loren IpsunLoren Ipsun Loren Ipsun',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedBuilder(
                    animation: animationController,
                    builder: ((context, child) {
                      return Transform.rotate(
                        angle: animationController.value * 2 * math.pi,
                        child: Image.asset(
                          fit: BoxFit.fitHeight,
                          height: 50.0,
                          width: double.infinity,
                          'assets/breakfast.png',
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 1.0,
                  width: 120.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
