import 'package:flutter/material.dart';
import 'package:flutter_carousel_intro/flutter_carousel_intro.dart';

import 'widgets/start_button.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromRGBO(206, 34, 195, 1),
              Color.fromRGBO(72, 39, 189, 1)
            ],
          ),
        ),
        child: Stack(children: [
          Image.asset(fit: BoxFit.cover, height: 700, 'assets/breakfast.png'),
          FlutterCarouselIntro(
            pointsAbove: false,
            animatedRotateX: false,
            animatedRotateZ: true,
            scale: true,
            animatedOpacity: true,
            primaryBullet: 20,
            primaryColor: const Color.fromARGB(255, 255, 230, 255),
            dotsCurve: Curves.ease,
            slides: [
              Image.asset("assets/headphone_black.png"),
              Image.asset("assets/headphone_blue.png"),
              Image.asset("assets/headphone_blue2.png"),
              Image.asset("assets/headphone_purple.png"),
              Image.asset("assets/headphone_red.png"),
            ],
          ),
          const SafeArea(
            child: Align(
              alignment: Alignment.bottomRight,
              child: StartButton(),
            ),
          )
        ]),
      ),
    );
  }
}
