import 'package:flutter/material.dart';

import 'favourites_button.dart';

class MostPopularsCard extends StatefulWidget {
  const MostPopularsCard({
    Key? key,
    required this.descriptionText,
    required this.imgUrl,
    required this.priceText,
    required this.containerColor,
  }) : super(key: key);
  final String descriptionText, imgUrl, priceText;
  final Color containerColor;

  @override
  State<MostPopularsCard> createState() => _MostPopularsCardState();
}

class _MostPopularsCardState extends State<MostPopularsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      width: 170.0,
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FavoriteButton(
                    onTap: (() {
                      print('object');
                    }),
                  ),
                ),
              ),
              Image.asset(
                widget.imgUrl,
                height: 165,
                width: 170,
              ),
              Text(
                widget.descriptionText,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                widget.priceText,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
