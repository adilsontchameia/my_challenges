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
              child: FlutterCarouselIntro(
                pointsAbove: false,
                animatedRotateX: false,
                animatedRotateZ: true,
                scale: true,
                animatedOpacity: true,
                primaryBullet: 12,
                secondaryBullet: 8,
                primaryColor: const Color.fromARGB(255, 255, 230, 255),
                dotsCurve: Curves.easeInOutExpo,
                slides: [
                  const Slides(
                    imgUrl: 'assets/headphone_black.png',
                    text: 'The Most Powerful of Our Store.',
                    color: Colors.black54,
                  ),
                  Slides(
                    imgUrl: 'assets/headphone_blue.png',
                    text: 'The Best Experience Ever.',
                    color: Colors.blue.shade300,
                  ),
                  Slides(
                    imgUrl: 'assets/headphone_blue2.png',
                    text: 'The Confort You Deserve.',
                    color: Colors.blueAccent.shade400,
                  ),
                  const Slides(
                    imgUrl: 'assets/headphone_purple.png',
                    text: 'Difference is our name.',
                    color: Colors.pink,
                  ),
                  const Slides(
                    imgUrl: 'assets/headphone_red.png',
                    text: 'Start Shopping to Imerse...',
                    color: Colors.red,
                  ),
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
