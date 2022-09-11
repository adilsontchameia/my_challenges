import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

class CustomLabelText extends StatelessWidget {
  const CustomLabelText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: VunongueColors.blue,
      ),
    );
  }
}