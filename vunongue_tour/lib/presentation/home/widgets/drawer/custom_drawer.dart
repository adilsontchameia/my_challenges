import 'package:flutter/material.dart';

import 'custom_header.dart';
import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomDrawerHeader(),
            const SizedBox(height: 10.0),
            CustomDrawerListTile(icon: Icons.home, text: 'Inicio'),
            const SizedBox(height: 15.0),
            CustomDrawerListTile(icon: Icons.favorite, text: 'Favoritos'),
            const SizedBox(height: 15.0),
            CustomDrawerListTile(icon: Icons.place, text: 'Categorias'),
            const SizedBox(height: 50.0),
            CustomDrawerListTile(icon: Icons.water_sharp, text: 'Dark Mode'),
            const SizedBox(height: 15.0),
            CustomDrawerListTile(
                icon: Icons.fingerprint, text: 'FingerPrint Auth'),
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
