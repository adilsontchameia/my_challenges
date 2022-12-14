import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_intro/flutter_carousel_intro.dart';

import 'widgets/slides_widget.dart';
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
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.loose,
          children: [
            Image.asset(fit: BoxFit.cover, height: 600, 'assets/breakfast.png'),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
              child: const FlutterCarouselIntro(
                pointsAbove: false,
                animatedRotateX: false,
                animatedRotateZ: true,
                scale: true,
                animatedOpacity: true,
                primaryBullet: 12,
                secondaryBullet: 8,
                primaryColor: Color.fromARGB(255, 255, 230, 255),
                dotsCurve: Curves.easeInOutExpo,
                slides: [
                  Slides(
                      imgUrl: 'assets/headphone_black.png',
                      text: 'The Most Powerful of Our Store'),
                  Slides(
                      imgUrl: 'assets/headphone_blue.png',
                      text: 'The Best Experience Ever !'),
                  Slides(
                      imgUrl: 'assets/headphone_blue2.png',
                      text: 'Affortable at All'),
                  Slides(
                      imgUrl: 'assets/headphone_purple.png',
                      text: 'Difference is our name !'),
                  Slides(
                      imgUrl: 'assets/headphone_red.png',
                      text: 'Start Shopping to Imerse...'),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: StartButton(),
            ),
          ],
        ),
      ),
    );
  }
}
