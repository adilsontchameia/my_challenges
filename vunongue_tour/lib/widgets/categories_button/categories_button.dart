import 'package:flutter/material.dart';

import '../../theme/theme.dart';

// ignore: must_be_immutable
class CategoriesButton extends StatelessWidget {
  CategoriesButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: VunongueColors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -1),
            blurRadius: 10.0,
          )
        ],
      ),
      height: 60.0,
      width: 170.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
