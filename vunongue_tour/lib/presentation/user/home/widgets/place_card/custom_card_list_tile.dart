import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCardListTile extends StatelessWidget {
  const CustomCardListTile({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(icon, size: 18.0),
        const SizedBox(width: 5.0),
        Text(
          text,
          style: const TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
