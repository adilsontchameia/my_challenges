import 'package:flutter/material.dart';

import 'widgets/bottom_viewer.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(child: Image.asset('assets/onboard-image.jpg')),
            Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 50.0),
                child: Text(
                  'Explore A Banda Com A Gente.',
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      color: Colors.blue.shade800,
                      shadows: const [
                        Shadow(
                          offset: Offset(0, -5),
                          blurRadius: 10.0,
                          color: Colors.black38,
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      fontSize: 60.0),
                ),
              ),
              // const SizedBox(height: 50.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Nós ajudamos-te a viajar no conforte da sua casa, viaje com nossa APP \ne desfrute o melhor que a BANDA tem a oferecer.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15.0),
                ),
              ),
            ]),
            const CustomBottomViewer(),
          ],
        ),
      ),
    );
  }
}
