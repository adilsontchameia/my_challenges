import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/provider/theme_provider.dart';
import 'package:vunongue_tour/theme/theme.dart';

class CustomDrawerListTile extends StatelessWidget {
  CustomDrawerListTile(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);
  IconData icon;
  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Consumer<ThemeModel>(builder: (_, themeModel, __) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: FaIcon(icon),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:
                        themeModel.isDark ? Colors.white : VunongueColors.blue),
              ),
            ],
          );
        }));
  }
}
