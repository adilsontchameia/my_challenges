import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/provider/theme_provider.dart';

import 'readMore/custom_read_more_home.dart';

class CustomCarouselSlider extends StatelessWidget {
  CustomCarouselSlider({
    Key? key,
  }) : super(key: key);

  List<String> image = [
    'assets/image-1.jpg',
    'assets/onboard-image.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (_, themeModel, __) {
      return CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            height: 150.0,
            autoPlayInterval: const Duration(seconds: 10)),
        items: image.map((images) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          images,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(124, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 50.0, left: 20.0, right: 20.0),
                                child: Text(
                                  'CSK Studio Camping',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: CustomReadMoreHome(
                                    text:
                                        'Venha conhecer os lugares mais fixes da banda com essa nossa jornada aos redores de Menongue.'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    FaIcon(FontAwesomeIcons.mapLocation),
                                    SizedBox(width: 20.0),
                                    Text('Missombo',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
            },
          );
        }).toList(),
      );
    });
  }
}
