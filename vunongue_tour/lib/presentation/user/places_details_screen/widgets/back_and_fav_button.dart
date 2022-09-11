import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/provider/theme_provider.dart';
import 'package:vunongue_tour/theme/theme.dart';

class BackAndFavButtons extends StatelessWidget {
  BackAndFavButtons({Key? key, required this.icon, required this.onTap})
      : super(key: key);
  VoidCallback onTap;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Consumer<ThemeModel>(builder: (_, themeModel, __) {
            return Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                color: themeModel.isDark
                    ? VunongueColors.blue
                    : VunongueColors.white,
              ),
              child: Center(child: FaIcon(icon)),
            );
          }),
        ),
      ),
    );
  }
}
