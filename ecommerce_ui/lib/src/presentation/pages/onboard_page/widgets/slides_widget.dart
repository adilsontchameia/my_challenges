import 'package:flutter/material.dart';

class Slides extends StatelessWidget {
  const Slides({Key? key, required this.imgUrl, required this.text})
      : super(key: key);
  final String imgUrl, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imgUrl),
        Text(text,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white)),
      ],
    );
  }
}