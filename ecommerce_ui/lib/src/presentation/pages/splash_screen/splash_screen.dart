import 'dart:async';

import 'package:ecommerce_ui/src/utils/constants.dart';
import 'package:flutter/material.dart';

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
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, sliderPage);
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
                  fit: BoxFit.cover,
                  height: 700,
                  'assets/breakfast.png',
                ),
              ),
            ),
            Transform.rotate(
              angle: -0.5,
              alignment: Alignment.centerLeft,
              child: Opacity(
                opacity: 0.7,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    height: 590,
                    'assets/headphone_red.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SOUND',
                  style: TextStyle(
                    fontSize: 80.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'SHOP',
                  style: TextStyle(
                    fontSize: 80.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Loren Ipsun Loren Ipsun Loren Ipsun Loren Ipsun Loren IpsunLoren Ipsun Loren Ipsun',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 2.0,
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
