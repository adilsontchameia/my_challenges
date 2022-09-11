import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomOnboardReadMore extends StatelessWidget {
  const CustomOnboardReadMore({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 2,
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Length,
      trimCollapsedText: 'Show More',
      trimExpandedText: '\nShow Less',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      moreStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
      lessStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }
}
