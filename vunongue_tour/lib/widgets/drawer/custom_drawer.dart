import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 300,
            color: Colors.red,
          ),
          const SizedBox(height: 10.0),
          DrawerTile(icon: Icons.home, text: 'Home'),
          const SizedBox(height: 15.0),
          DrawerTile(icon: Icons.home, text: 'Home'),
          const SizedBox(height: 15.0),
          DrawerTile(icon: Icons.home, text: 'Home'),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  DrawerTile({Key? key, required this.icon, required this.text})
      : super(key: key);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Icon(icon, size: 32, color: Colors.grey),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}
