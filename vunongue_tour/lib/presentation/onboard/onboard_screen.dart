import 'package:flutter/material.dart';
import 'package:vunongue_tour/presentation/home/home_screen.dart';

import 'widgets/custom_onboard_read_more.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            height: double.infinity,
            fit: BoxFit.fill,
            image: AssetImage('assets/cuito-1.jpg'),
          ),
          Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: LogoContainer(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
                child: MainTitle(),
              ),
              // const SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomOnboardReadMore(
                    text:
                        'Nós ajudamos-te a viajar no conforte da sua casa, viaje com nossa APP \ne desfrute o melhor que a BANDA tem a oferecer.'),
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GetStartedButton(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
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
    );
  }
}

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: Colors.blue),
      child: TextButton(
          onPressed: () {},
          child: const Text(
            'LOGO',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  GetStartedButton({Key? key, required this.onTap}) : super(key: key);
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), color: Colors.blue),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: const Text(
              'Iniciar',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
