import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 20,
      circleColor:
          const CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
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
    );
  }
}
