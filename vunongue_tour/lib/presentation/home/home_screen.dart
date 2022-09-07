import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vunongue_tour/presentation/home/widgets/readMore/custom_read_more_home.dart';

import '../../widgets/categories_button/categories_button.dart';
import 'widgets/customAppBar/custom_app_bar.dart';
import 'widgets/drawer/custom_drawer.dart';
import 'widgets/place_card/simple_place_card.dart';
import 'widgets/place_card_multi_images/place_card.dart';
import 'widgets/tags/home_screen_tags.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<String> image = [
    'assets/image-1.jpg',
    'assets/onboard-image.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 10.0, right: 10.0),
          child: CustomAppBar(),
        ),
      ),
      drawer: const CustomDrawer(),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 15.0),
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.start,
                spacing: 15.0,
                runSpacing: 10.0,
                children: [
                  CategoriesButton(
                    icon: Icons.hotel,
                    text: 'Hotels',
                  ),
                  CategoriesButton(
                    icon: Icons.holiday_village,
                    text: 'Hollyday',
                  ),
                  CategoriesButton(
                    icon: Icons.local_taxi,
                    text: 'Taxi',
                  ),
                  CategoriesButton(
                    icon: Icons.park,
                    text: 'Parks',
                  ),
                  CategoriesButton(
                    icon: Icons.airplanemode_active_outlined,
                    text: 'Airports',
                  ),
                  CategoriesButton(
                    icon: Icons.school,
                    text: 'Schools',
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              HomeScreenTags(text: 'Eventos'),
              const SizedBox(height: 10.0),
              CustomCarouselSlider(image: image),
              const SizedBox(height: 10.0),
              HomeScreenTags(text: 'Explore Mais'),
              const PlaceCardMulti(),
              const SizedBox(width: 5.0),
              const PlaceCardMulti(),
              HomeScreenTags(text: 'Explore Mais'),
              const SizedBox(height: 5.0),
              Column(
                children: const [
                  SimplePlaceCard(),
                  SizedBox(height: 20.0),
                  SimplePlaceCard(),
                  SizedBox(height: 20.0),
                  SimplePlaceCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    Key? key,
    required this.image,
  }) : super(key: key);

  final List<String> image;

  @override
  Widget build(BuildContext context) {
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
                                  Text('Missombo')
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
  }
}
