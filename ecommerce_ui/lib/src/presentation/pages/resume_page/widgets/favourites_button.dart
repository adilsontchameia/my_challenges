import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 35,
      child: GestureDetector(
        onTap: onTap,
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
      ),
    );
  }
}
