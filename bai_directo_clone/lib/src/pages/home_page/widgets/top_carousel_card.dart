import 'package:flutter/material.dart';

import '../../../models/home_card_model.dart';
import 'home_top_card.dart';

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