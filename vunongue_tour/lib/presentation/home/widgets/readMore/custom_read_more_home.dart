import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../theme/theme.dart';

class CustomReadMoreHome extends StatelessWidget {
  CustomReadMoreHome({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 1,
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Line,
      trimLength: 100,
      trimCollapsedText: ' Show More',
      trimExpandedText: ' Show Less',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade300,
      ),
      moreStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: VunongueColors.buttonColor),
      lessStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: VunongueColors.buttonColor),
    );
  }
}
