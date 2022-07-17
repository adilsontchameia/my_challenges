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
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            )),
        const Text(
          'Localizacao \nCuito Cuanavale',
          textAlign: TextAlign.center,
        ),
        const CircleAvatar(
          radius: 22.0,
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}