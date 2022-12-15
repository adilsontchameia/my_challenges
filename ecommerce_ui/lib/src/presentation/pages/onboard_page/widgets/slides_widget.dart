import 'package:flutter/material.dart';

class Slides extends StatelessWidget {
  const Slides(
      {Key? key, required this.imgUrl, required this.text, required this.color})
      : super(key: key);
  final String imgUrl, text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imgUrl),
        Container(
          color: color.withOpacity(0.5),
          child: Text(text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white)),
        ),
      ],
    );
  }
}
