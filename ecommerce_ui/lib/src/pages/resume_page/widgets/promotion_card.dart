import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard(
      {Key? key,
      required this.descriptionText,
      required this.imgUrl,
      required this.containerColor})
      : super(key: key);
  final String descriptionText, imgUrl;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 165.0,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                descriptionText,
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
          ),
          Image.asset(
            imgUrl,
            height: 170,
            width: 170,
          ),
        ],
      ),
    );
  }
}