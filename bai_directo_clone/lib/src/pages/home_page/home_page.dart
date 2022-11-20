import 'package:bai_directo_clone/utils/theme_config.dart';
import 'package:flutter/material.dart';

import '../../models/home_card_model.dart';
import 'widgets/home_center_card.dart';
import 'widgets/home_custom_app_bar.dart';
import 'widgets/home_main_banner.dart';
import 'widgets/top_carousel_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.homeCardModel});
  final List<HomeCardModel>? homeCardModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BaiColors.scaffoldColor,
      //bottomNavigationBar: const HomeBottomNav(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const HomeMainBanner(),
                SafeArea(
                  child: Column(
                    children: [
                      const HomeAppBar(),
                      SizedBox(height: size.height * 0.23),
                      Stack(children: const [
                        TopCardsCarousel(),
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
                      color: Colors.black.withOpacity(0.5),
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
