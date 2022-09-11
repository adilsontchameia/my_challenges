import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/provider/theme_provider.dart';
import 'package:vunongue_tour/theme/theme.dart';

class HomeScreenTags extends StatelessWidget {
  HomeScreenTags({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (_, themeModel, __) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: themeModel.isDark
                        ? Colors.white
                        : VunongueColors.blue))),
      );
    });
  }
}
