import 'dart:math';

import 'package:bai_directo_clone/src/pages/home_page/widgets/home_main_banner.dart';
import 'package:bai_directo_clone/src/pages/home_page/widgets/top_carousel_card.dart';
import 'package:bai_directo_clone/utils/theme_config.dart';
import 'package:flutter/material.dart';

import 'widgets/home_center_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BaiColors.defaultBlueColor,
        leading: const Icon(Icons.star_border_outlined),
        title: const SearchBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverAppBar(expandedHeight: 200),
            pinned: false,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.120, horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MOVIMENTOS',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3.0),
                        Row(
                          children: [
                            Icon(
                              size: 15.0,
                              Icons.account_balance,
                              color: BaiColors.baiBlueColor.withOpacity(0.5),
                            ),
                            const SizedBox(width: 2.0),
                            const Text(
                              'CONTA 1548651245 17 895',
                              style: TextStyle(
                                  color: BaiColors.baiBlueColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  const HomePageCenterCard(isExpensive: true),
                  const HomePageCenterCard(isExpensive: false),
                  const HomePageCenterCard(isExpensive: true),
                  const HomePageCenterCard(isExpensive: false),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'CONTAS',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 22.0),
                  const HomePageCenterCard(isExpensive: false),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Container(
          color: BaiColors.defaultBlueColor,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: const Text(
              "MySliverAppBar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
            top: expandedHeight / 1.2 - shrinkOffset,
            child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: const TopCardsCarousel(),
            )),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15.0)),
      child: TextField(
        // controller: _editingController,
        // onChanged: (_) => setState(() {}),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: 'O QUE PROCURA?',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

class CardsHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 200;

  final Widget cards;

  CardsHeader({
    required this.cards,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        //  height: max(maxTopBarHeight * (2 - shrinkFactor * 1.45), minTopBarHeight),
        height: 300,
        width: double.infinity,
        color: BaiColors.defaultBlueColor,
        child: const Center(child: HomeMainBanner()),
      ),
    );
    return SizedBox(
      //height: max(maxExtent - shrinkOffset, minExtent),
      height: 300,
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) topBar,
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: cards,
            ),
          ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 230;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
