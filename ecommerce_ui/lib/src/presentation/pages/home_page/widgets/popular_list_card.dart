import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../../../data/models/headphone_model.dart';
import '../../../../data/models/products_model.dart';

class BuildPopularList extends StatefulWidget {
  const BuildPopularList({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildPopularList> createState() => _BuildPopularListState();
}

class _BuildPopularListState extends State<BuildPopularList> {
  final int _currentIndex = 0;
  bool _isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          _isSelected = _currentIndex == index;
          HeadphoneModel headphones = headphonesList[index];
          return Container(
            width: 170.0,
            decoration: BoxDecoration(
              color: headphones.backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LikeButton(
                    size: 20,
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return Container(
                        height: 35,
                        width: 35,
                        color: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: isLiked ? Colors.red : Colors.grey,
                          size: 20,
                        ),
                      );
                    },
                  ),
                  Image.asset(
                    headphones.imgUrl,
                    height: 165,
                    width: 170,
                  ),
                  Text(
                    headphones.productName,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    headphones.productPrice.toString(),
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: prodcutsList.length,
        shrinkWrap: true,
      ),
    );
  }
}
