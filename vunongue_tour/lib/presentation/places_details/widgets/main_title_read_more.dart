import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MainTitleReadMore extends StatelessWidget {
  const MainTitleReadMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'Museu Da Batalha do Cuito Cuanavale',
      trimLines: 2,
      trimMode: TrimMode.Length,
      trimCollapsedText: 'Show More',
      trimExpandedText: '\nShow Less',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade700,
      ),
      moreStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
      lessStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }
}