import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                color: Colors.red,
                child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Image.asset(
                      'assets/onboard-image.jpg',
                      fit: BoxFit.fitWidth,
                    ))),
            const SizedBox(height: 10.0),
            DrawerTile(icon: Icons.home, text: 'Inicio'),
            const SizedBox(height: 15.0),
            DrawerTile(icon: Icons.favorite, text: 'Favoritos'),
            const SizedBox(height: 15.0),
            DrawerTile(icon: Icons.local_activity, text: 'Atividades'),
            const SizedBox(height: 50.0),
            DrawerTile(icon: Icons.home, text: 'Inicio'),
            const SizedBox(height: 15.0),
            DrawerTile(icon: Icons.person, text: 'Log-In'),
            const SizedBox(height: 120.0),
            const Text(
              'developed by: Adilson Tchameia',
              style: TextStyle(fontSize: 10.0, color: Colors.grey),
            ),
            const Text('stocks provided by: CSK Studio',
                style: TextStyle(fontSize: 10.0, color: Colors.grey)),
          ],
        ),
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
