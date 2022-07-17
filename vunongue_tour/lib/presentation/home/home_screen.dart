import 'package:flutter/material.dart';
import '../../widgets/categories_button/categories_button.dart';
import '../../widgets/customAppBar/custom_app_bar.dart';

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
                Container(
                  height: 170.0,
                  width: 550.0,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





/*

 Container(
                height: 200.0,
                width: 300.0,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, -1),
                      blurRadius: 10.0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Image.asset(
                        'assets/onboard-image.jpg',
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 50.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Image.asset(
                          'assets/onboard-image.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              )
              */