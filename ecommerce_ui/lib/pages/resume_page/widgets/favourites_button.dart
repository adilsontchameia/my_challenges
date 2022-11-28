import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 35,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            )),
      ),
    );
  }
}