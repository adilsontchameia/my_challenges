import 'package:flutter/material.dart';

class IconHeaderModel {
  final String iconName;
  final IconData iconPath;

  IconHeaderModel({
    required this.iconName,
    required this.iconPath,
  });
}

//Cursos
List<IconHeaderModel> iconHeaderModel = [
  IconHeaderModel(
    iconName: 'Galey',
    iconPath: Icons.photo,
  ),
  IconHeaderModel(
    iconName: 'Books',
    iconPath: Icons.book,
  ),
  IconHeaderModel(
    iconName: 'List',
    iconPath: Icons.list,
  ),
  IconHeaderModel(
    iconName: 'Calendar',
    iconPath: Icons.perm_contact_cal,
  ),
];
