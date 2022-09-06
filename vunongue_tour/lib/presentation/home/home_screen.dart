import 'package:flutter/material.dart';

import '../../widgets/categories_button/categories_button.dart';
import '../../widgets/customAppBar/custom_app_bar.dart';
import '../../widgets/place_card/simple_place_card.dart';
import '../../widgets/place_card_multi_images/place_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(height: 50.0),
                Wrap(
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
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Explore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0))),
                ),
                const PlaceCardMulti(),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'More Places',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SimplePlaceCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
