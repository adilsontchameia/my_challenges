import 'package:ecommerce_ui/src/presentation/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_pages/favoutites_page/favourites_page.dart';
import 'bottom_nav_pages/products_page/products_page.dart';
import 'bottom_nav_pages/profile_page/profile_page.dart';
import 'bottom_nav_icon.dart';

class BottonNavPage extends StatefulWidget {
  const BottonNavPage({super.key});

  @override
  State<BottonNavPage> createState() => _BottonNavPageState();
}

class _BottonNavPageState extends State<BottonNavPage> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const FavouritesPage(),
    const ProductsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildMyNavBar(context),
      body: pages[pageIndex],
    );
  }

  Container _buildMyNavBar(BuildContext context) {
    return Container(
        height: 55,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavIconButton(
                  imgUrl: 'assets/vector.png',
                  pageIndex: 0,
                  onPressed: (() => setState(() {
                        pageIndex = 0;
                      }))),
              NavIconButton(
                  imgUrl: 'assets/bag.png',
                  pageIndex: 1,
                  onPressed: (() => setState(() {
                        pageIndex = 1;
                      }))),
              NavIconButton(
                  imgUrl: 'assets/like.png',
                  pageIndex: pageIndex,
                  onPressed: (() => setState(() {
                        pageIndex = 2;
                      }))),
              NavIconButton(
                  imgUrl: 'assets/profile.png',
                  pageIndex: pageIndex,
                  onPressed: (() => setState(() {
                        pageIndex = 3;
                      }))),
            ],
          ),
        ));
  }
}
