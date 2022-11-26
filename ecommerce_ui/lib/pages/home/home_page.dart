import 'package:ecommerce_ui/pages/home/bottom_nav_pages/favourites_page.dart';
import 'package:ecommerce_ui/pages/home/bottom_nav_pages/resume_page.dart';
import 'package:ecommerce_ui/pages/home/bottom_nav_pages/products_page.dart';
import 'package:ecommerce_ui/pages/home/bottom_nav_pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

class NavIconButton extends StatelessWidget {
  const NavIconButton({
    Key? key,
    required this.imgUrl,
    required this.pageIndex,
    required this.onPressed,
  }) : super(key: key);
  final String imgUrl;
  final int pageIndex;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(
            height: 25,
            imgUrl,
            color:
                pageIndex != pageIndex ? Colors.purple : Colors.purple.shade900,
            //Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
