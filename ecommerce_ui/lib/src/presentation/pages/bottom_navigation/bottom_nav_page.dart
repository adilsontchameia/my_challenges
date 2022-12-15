import 'package:ecommerce_ui/src/presentation/pages/home_page/home_page.dart';
import 'package:ecommerce_ui/src/utils/constants.dart';
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
        selectedIconTheme: const IconThemeData(color: customPurpleColor),
        backgroundColor: scaffoldColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/vector.png')),
              label: 'Home Page'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/bag.png')), label: 'Cart'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/like.png')), label: 'Liked'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/profile.png')),
              label: 'Profile'),
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
