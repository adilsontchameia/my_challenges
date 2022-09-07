import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: const [
          Text(
            'Localizacao',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          Text(
            'Cuito Cuanavale',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            print('Tapped');
          },
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/onboard-image.jpg'),
            ),
          ),
        )
      ],
    );
  }
}
