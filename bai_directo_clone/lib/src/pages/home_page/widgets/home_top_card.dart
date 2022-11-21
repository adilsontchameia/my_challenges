import 'package:bai_directo_clone/src/models/home_card_model.dart';
import 'package:bai_directo_clone/utils/theme_config.dart';
import 'package:flutter/material.dart';

class HomePageTopCard extends StatelessWidget {
  const HomePageTopCard({
    Key? key,
    required this.homeCardModel,
  }) : super(key: key);
  final HomeCardModel homeCardModel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.28 + 10,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 2,
              offset: const Offset(0.0, 2),
              color: Colors.black.withOpacity(0.1),
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                size: 25.0,
                color: BaiColors.defaultBlueColor,
                homeCardModel.icon,
              ),
              const SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: BaiColors.baiBlueColor.withOpacity(0.8),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: homeCardModel.text1,
                    ),
                    TextSpan(
                      text: '\n${homeCardModel.text2}',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
