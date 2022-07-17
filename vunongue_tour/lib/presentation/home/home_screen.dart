import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  const Text('Localizacao \nCuito Cuanavale',
                      textAlign: TextAlign.center),
                  const CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              Wrap(
                spacing: 15.0,
                runSpacing: 10.0,
                children: [
                  CategoriesButton(icon: Icons.hotel, text: 'Hotels'),
                  CategoriesButton(
                      icon: Icons.holiday_village, text: 'Hollyday'),
                  CategoriesButton(icon: Icons.local_taxi, text: 'Taxi'),
                  CategoriesButton(icon: Icons.park, text: 'Parks'),
                  CategoriesButton(
                      icon: Icons.airplanemode_active_outlined,
                      text: 'Airports'),
                  CategoriesButton(icon: Icons.school, text: 'Schools'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesButton extends StatelessWidget {
  CategoriesButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -1),
              blurRadius: 10.0,
            )
          ]),
      height: 60.0,
      width: 170.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
