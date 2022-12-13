import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_intro/flutter_carousel_intro.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          //color: Colors.black.withOpacity(0.5),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromRGBO(206, 34, 195, 1),
              Color.fromRGBO(72, 39, 189, 1)
            ],
          ),
        ),
        child: Stack(children: [
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Image.asset(
                  fit: BoxFit.cover, height: 700, 'assets/breakfast.png')),
          FlutterCarouselIntro(
            pointsAbove: false,
            animatedRotateX: false,
            animatedRotateZ: true,
            scale: true,
            animatedOpacity: true,
            primaryBullet: 20,
            //secundaryBullet: 12,
            primaryColor: const Color.fromARGB(255, 255, 230, 255),
            //secundaryColor: Colors.grey,
            dotsCurve: Curves.slowMiddle,
            slides: [
              Image.asset("assets/headphone_black.png"),
              Image.asset("assets/headphone_blue.png"),
              Image.asset("assets/headphone_blue2.png"),
              Image.asset("assets/headphone_purple.png"),
              Image.asset("assets/headphone_red.png"),
            ],
          ),
        ]),
      ),
    );
  }
}
