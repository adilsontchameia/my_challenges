import 'package:flutter/material.dart';

import '../../../models/home_card_model.dart';
import 'home_top_card.dart';

class TopCardsCarousel extends StatelessWidget {
  const TopCardsCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.13 + 5,
      //  width: double.infinity,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: HomeCardModel.homeCardModel.length,
        itemBuilder: (context, index) {
          return HomePageTopCard(
            homeCardModel: HomeCardModel.homeCardModel[index],
          );
        },
      ),
    );
  }
}
