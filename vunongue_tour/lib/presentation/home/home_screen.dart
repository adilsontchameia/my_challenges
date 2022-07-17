import 'package:flutter/material.dart';

import '../../widgets/categories_button/categories_button.dart';
import '../../widgets/customAppBar/custom_app_bar.dart';
import '../../widgets/place_card/simple_place_card.dart';

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
                SizedBox(
                  height: 160.0,
                  width: 550.0,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: const Image(
                                  height: 140.0,
                                  image: AssetImage('assets/image-1.jpg'))),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 250.0,
                              height: 55.0,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(124, 0, 0, 0),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: const [
                                        Text('Luanda',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white)),
                                        Text('Kilamba Kiaxi',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white))
                                      ],
                                    ),
                                    const Text('⭐ 4.7',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(width: 1.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: const Image(
                                    height: 60.0,
                                    image: AssetImage('assets/image-1.jpg'))),
                            const SizedBox(height: 1.0),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: const Image(
                                    height: 60.0,
                                    image: AssetImage('assets/image-1.jpg'))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
