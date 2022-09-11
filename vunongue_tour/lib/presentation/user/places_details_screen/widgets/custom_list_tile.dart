// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../theme/theme.dart';


class CustomListTile extends StatelessWidget {
  CustomListTile({Key? key, required this.faIcon, required this.text})
      : super(key: key);
  IconData faIcon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        dense: true,
        title: Text(text,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold)),
        leading: FaIcon(faIcon, color: VunongueColors.buttonColor),
      ),
    );
  }
}
