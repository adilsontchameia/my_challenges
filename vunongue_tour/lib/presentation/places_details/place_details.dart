import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
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
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0))),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            'Miradouro da Leba',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          title: Text('Cuando Cubango - Cuito Cuanavale',
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.grey.shade200)),
                          leading: const FaIcon(FontAwesomeIcons.map),
                        ),
                        const Text(
                          'Sobre',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        
                      ],
                    ),
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
