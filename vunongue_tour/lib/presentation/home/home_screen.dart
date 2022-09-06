import 'package:flutter/material.dart';
import 'package:vunongue_tour/widgets/drawer/custom_drawer.dart';

import '../../widgets/categories_button/categories_button.dart';
import '../../widgets/place_card/simple_place_card.dart';
import '../../widgets/place_card_multi_images/place_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text(
              'Localizacao',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            Text(
              'Cuito Cuanavale',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              print('Tapped');
            },
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assets/onboard-image.jpg'),
              ),
            ),
          )
        ],
      ),
      drawer: const CustomDrawer(),
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 15.0),
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
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Explore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0))),
                ),
                Column(
                  children: const [
                    PlaceCardMulti(),
                    SizedBox(width: 5.0),
                  ],
                ),
                const PlaceCardMulti(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'More Places',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: const [
                      SimplePlaceCard(),
                      SizedBox(height: 20.0),
                      SimplePlaceCard(),
                      SizedBox(height: 20.0),
                      SimplePlaceCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
