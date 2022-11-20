import 'package:flutter/material.dart';

import '../../models/home_card_model.dart';
import 'widgets/home_center_card.dart';
import 'widgets/home_custom_app_bar.dart';
import 'widgets/home_main_banner.dart';
import 'widgets/top_carousel_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.homeCardModel});
  final List<HomeCardModel>? homeCardModel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                HomeMainBanner(size: size),
                SafeArea(
                  child: Column(
                    children: [
                      const HomeAppBar(),
                      SizedBox(height: size.height * 0.23),
                      Stack(children: [
                        TopCardsCarousel(size: size),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MOVIMENTOS',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 3.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.account_balance,
                            color: Colors.grey,
                          ),
                          Text(
                            'CONTA 1548651245 17 895',
                            style: TextStyle(
                              color: Color.fromARGB(255, 112, 138, 159),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
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
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const HomePageCenterCard(isExpensive: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
