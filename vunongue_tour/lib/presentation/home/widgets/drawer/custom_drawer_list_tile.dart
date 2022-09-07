import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawerListTile extends StatelessWidget {
  CustomDrawerListTile({Key? key, required this.icon, required this.icone, required this.text})
      : super(key: key);
  IconData icon;
  String text;
  FaIcon icone;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: FaIcon(FontAwesomeIcons.a),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
