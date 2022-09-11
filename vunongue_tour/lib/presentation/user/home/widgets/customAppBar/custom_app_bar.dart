import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/providers/theme_provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (_, themeModel, __) {
      return AppBar(
        title: Text(text,
            textAlign: TextAlign.center,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
                onTap: () {
                  themeModel.isDark
                      ? themeModel.isDark = false
                      : themeModel.isDark = true;
                },
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: FaIcon(themeModel.isDark
                      ? FontAwesomeIcons.sun
                      : FontAwesomeIcons.moon),
                )),
          ),
        ],
      );
    });
  }
}
