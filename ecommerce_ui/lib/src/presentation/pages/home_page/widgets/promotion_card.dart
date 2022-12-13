import 'package:flutter/material.dart';

class PromotionCard extends StatefulWidget {
  const PromotionCard({
    Key? key,
    required this.descriptionText,
    required this.imgUrl,
    required this.containerColor,
  }) : super(key: key);
  final String descriptionText, imgUrl;
  final Color containerColor;

  @override
  State<PromotionCard> createState() => _PromotionCardState();
}

class _PromotionCardState extends State<PromotionCard> {
  final int _currentIndex = 0;
  final bool _isSelected = true;
  int indexx = 0;
  @override
  Widget build(BuildContext context) {
    var index = _currentIndex == indexx;
    return Container(
      height: 280.0,
      width: 165.0,
      decoration: BoxDecoration(
        color: widget.containerColor,
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
                widget.descriptionText,
                style: TextStyle(
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),
          Image.asset(
            widget.imgUrl,
            height: 170,
            width: 170,
          ),
        ],
      ),
    );
  }
}
