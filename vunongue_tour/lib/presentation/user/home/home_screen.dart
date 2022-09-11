import 'package:flutter/material.dart';

import '../../../commoms/categories_button/categories_button.dart';
import 'widgets/carousel_slider/carousel_slider.dart';
import 'widgets/customAppBar/custom_app_bar.dart';
import 'widgets/drawer/custom_drawer.dart';
import 'widgets/place_card/simple_place_card.dart';
import 'widgets/place_card_multi_images/place_card.dart';
import 'widgets/tags/home_screen_tags.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CustomAppBar(),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text(
                'CUITO CUANAVALE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
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
              CustomCarouselSlider(),
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
