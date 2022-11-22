import 'package:flutter/material.dart';

import '../../../../utils/theme_config.dart';
import 'search_bar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: BaiColors.defaultBlueColor,
      leading: const Icon(Icons.star_border_outlined),
      title: const SearchBar(),
    );
  }
}
