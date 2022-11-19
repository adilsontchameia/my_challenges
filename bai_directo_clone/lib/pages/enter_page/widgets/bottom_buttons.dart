import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () => onTap,
          icon: Icon(icon),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 11.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
