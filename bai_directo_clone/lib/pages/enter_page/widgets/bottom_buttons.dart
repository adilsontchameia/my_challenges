import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
          icon: Icon(icon),
        ),
        const Text(
          'AGENCIAS',
          style: TextStyle(
            fontSize: 11.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
