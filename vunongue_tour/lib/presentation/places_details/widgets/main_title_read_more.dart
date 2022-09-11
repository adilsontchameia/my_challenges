import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:vunongue_tour/provider/theme_provider.dart';
import 'package:vunongue_tour/theme/theme.dart';

class MainTitleReadMore extends StatelessWidget {
  const MainTitleReadMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (_, themeModel, __) {
      return ReadMoreText(
        'Museu Da Batalha do Cuito Cuanavale',
        trimLines: 2,
        trimMode: TrimMode.Length,
        trimCollapsedText: 'Show More',
        trimExpandedText: '\nShow Less',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: themeModel.isDark ? VunongueColors.blue : VunongueColors.blue,
        ),
        moreStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
        lessStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
      );
    });
  }
}
