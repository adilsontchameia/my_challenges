import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {
            debugPrint('Clicked');
          },
          icon: const Icon(Icons.star_border_outlined),
        ),
        const Text(
          'O QUE PROCURA?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox()
      ],
    );
  }
}