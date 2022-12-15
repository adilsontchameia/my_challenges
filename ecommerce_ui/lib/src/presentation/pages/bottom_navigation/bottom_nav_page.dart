import 'package:ecommerce_ui/src/presentation/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_pages/favoutites_page/favourites_page.dart';
import 'bottom_nav_pages/products_page/products_page.dart';
import 'bottom_nav_pages/profile_page/profile_page.dart';

class BottonNavPage extends StatefulWidget {
  const BottonNavPage({super.key});

  @override
  State<BottonNavPage> createState() => _BottonNavPageState();
}

class _BottonNavPageState extends State<BottonNavPage> {
  int _currentIndex = 0;

  final List<Widget> _telas = [
    HomePage(),
    const FavouritesPage(),
    const ProductsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              
              icon: Image.asset(
                  height: 25,
                  'assets/vector.png',
                  color: Colors.purple.shade900),
              label: 'Minha conta'),
          BottomNavigationBarItem(
              icon: Image.asset(
                  height: 25, 'assets/bag.png', color: Colors.purple.shade900),
              label: 'Minha conta'),
          BottomNavigationBarItem(
              icon: Image.asset(
                  height: 25, 'assets/like.png', color: Colors.purple.shade900),
              label: 'Minha conta'),
          BottomNavigationBarItem(
              icon: Image.asset(
                  height: 25,
                  'assets/profile.png',
                  color: Colors.purple.shade900),
              label: 'Minha conta'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
