import 'package:bai_directo_clone/pages/home_page/widgets/home_center_card.dart';
import 'package:bai_directo_clone/pages/home_page/widgets/home_top_card.dart';
import 'package:flutter/material.dart';

import '../../models/home_card_model.dart';

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
                MainBanner(size: size),
                SafeArea(
                  child: Column(
                    children: [
                      const CustomAppBar(),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainBanner extends StatelessWidget {
  const MainBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      color: const Color.fromRGBO(0, 163, 224, 1),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {
            debugPrint('Clicked');
          },
          icon: const Icon(Icons.star_border_outlined),
        ),
        const Text(
          'O QUE PROCURA?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox()
      ],
    );
  }
}

class TopCardsCarousel extends StatelessWidget {
  const TopCardsCarousel({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.14,
      width: double.infinity,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: HomeCardModel.homeCardModel.length,
        itemBuilder: (context, index) {
          return const HomePageTopCard(text1: 'aa', text2: 'text5');
        },
      ),
    );
  }
}
