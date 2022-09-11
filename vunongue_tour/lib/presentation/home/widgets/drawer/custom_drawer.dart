import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vunongue_tour/presentation/home/widgets/drawer/custom_drawer_list_tile.dart';

import '../../../../provider/theme_provider.dart';
import 'custom_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Consumer<ThemeModel>(
          builder: (_, themeModel, __) {
            return Column(
              children: [
                const CustomDrawerHeader(),
                const SizedBox(height: 50.0),
                CustomDrawerListTile(
                    icon: FontAwesomeIcons.house, text: 'Home', onTap: () {}),
                const SizedBox(height: 35.0),
                CustomDrawerListTile(
                    icon: FontAwesomeIcons.heart,
                    text: 'Favourites',
                    onTap: () {}),
                const SizedBox(height: 35.0),
                CustomDrawerListTile(
                    icon: themeModel.isDark
                        ? FontAwesomeIcons.sun
                        : FontAwesomeIcons.moon,
                    text: themeModel.isDark ? 'Light Mode' : 'Dark Mode',
                    onTap: () {
                      themeModel.isDark
                          ? themeModel.isDark = false
                          : themeModel.isDark = true;
                    }),
                const SizedBox(height: 35.0),
                CustomDrawerListTile(
                    icon: FontAwesomeIcons.streetView,
                    text: 'Mambos da Banda',
                    onTap: () {}),
                const SizedBox(height: 120.0),
                const Text(
                  'developed by: Adilson Tchameia',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
                const Text('stocks provided by: CSK Studio',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey)),
              ],
            );
          },
        ),
      ),
    );
  }
}
