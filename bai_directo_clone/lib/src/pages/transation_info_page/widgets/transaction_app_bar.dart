import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
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
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }
}
