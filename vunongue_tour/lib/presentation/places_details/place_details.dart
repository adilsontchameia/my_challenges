import 'package:flutter/material.dart';

class PlacesDetailsScreen extends StatelessWidget {
  const PlacesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 1200.0 / 2,
                width: double.infinity,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/onboard-image.jpg'),
                  //  image: AssetImage('assets/image-1.jpg'),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 150.0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0))),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
