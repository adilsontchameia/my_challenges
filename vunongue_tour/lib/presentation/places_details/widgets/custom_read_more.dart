import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../theme/theme.dart';

class CustomReadMore extends StatelessWidget {
  CustomReadMore({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 2,
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Length,
      trimCollapsedText: 'Show More',
      trimExpandedText: '\nShow Less',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade500,
      ),
      moreStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: VunongueColors.buttonColor),
      lessStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: VunongueColors.buttonColor),
    );
  }
}
