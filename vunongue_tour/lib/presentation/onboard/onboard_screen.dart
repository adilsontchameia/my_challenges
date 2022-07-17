import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:vunongue_tour/presentation/home/home_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/onboard-image.jpg'),
          const Padding(
            padding: EdgeInsets.only(top: 75.0, left: 35.0),
            child: Text(
              'Explore\nA Banda\nCom a Gente.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 350.0, left: 35.0),
            child: Text(
              'Nós ajudamos-te a viajar no conforte da sua casa, viaje com nossa APP \ne desfrute o melhor que a BANDA tem a oferecer.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130.0,
              width: 450.0,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, -2),
                      blurRadius: 5.0,
                    )
                  ]),
              //TODO: media query to take all width space
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      height: 95.0,
                      width: 360.0,
                      child: SlideAction(
                        elevation: 0.0,
                        text: 'Deslize para iniciar',
                        sliderRotate: false,
                        innerColor: Colors.blue.shade100,
                        outerColor: Colors.white,
                        sliderButtonIcon: Icon(
                          Icons.adaptive.arrow_forward,
                          color: Colors.black,
                        ),
                        borderRadius: 10.0,
                        animationDuration: const Duration(seconds: 2),
                        onSubmit: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Privacy Police',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
