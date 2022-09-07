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
        Column(
          children: const [
            Text('Localizacao',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cuito Cuanavale',
              style: TextStyle(wordSpacing: 2, letterSpacing: 1.5),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const CircleAvatar(
          radius: 22.0,
          backgroundImage: AssetImage('assets/onboard-image.jpg'),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
