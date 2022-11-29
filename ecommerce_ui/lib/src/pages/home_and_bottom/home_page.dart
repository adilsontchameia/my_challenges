import 'package:flutter/material.dart';

import '../nav_bottom_pages/favoutites_page/favourites_page.dart';
import '../nav_bottom_pages/products_page/products_page.dart';
import '../nav_bottom_pages/profile_page/profile_page.dart';
import '../resume_page/resume_page.dart';
import 'bottom_nav_icon.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  int pageIndex = 0;

  final pages = [
    const ResumePage(),
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
