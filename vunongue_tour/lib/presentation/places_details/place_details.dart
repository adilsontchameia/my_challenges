import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class PlacesDetailsScreen extends StatelessWidget {
  const PlacesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Image(
          height: double.infinity,
          fit: BoxFit.fill,
          image: AssetImage('assets/onboard-image.jpg')),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 280.0,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      dense: true,
                      title: Text(
                        'Miradouro da Leba',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      leading: const FaIcon(FontAwesomeIcons.locationPin),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      dense: true,
                      title: Text('Cuando Cubango - Cuito Cuanavale',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold)),
                      leading: const FaIcon(FontAwesomeIcons.mapLocation),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      dense: true,
                      title: Text('Cuando Cubango - Cuito Cuanavale',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold)),
                      leading: const FaIcon(FontAwesomeIcons.map),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. A interfaces for iOS and Android apps with the unified codebase. interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Length,
                      trimCollapsedText: 'Show More',
                      trimExpandedText: '\nShow Less',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                      moreStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                      lessStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Material(
                      child: Container(
                        height: 50.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30.0))),
                        child: const ListTile(
                          dense: true,
                          title: Text('Ver No Mapa',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          leading: FaIcon(
                            FontAwesomeIcons.mapPin,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    ]));
  }
}
