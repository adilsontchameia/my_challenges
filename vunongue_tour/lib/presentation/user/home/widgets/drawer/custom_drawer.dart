import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/theme_provider.dart';
import 'custom_drawer_list_tile.dart';
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
                const SizedBox(height: 18.0),
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
                    icon: FontAwesomeIcons.medal,
                    text: 'Mambos da Banda',
                    onTap: () {}),
                const SizedBox(height: 35.0),
                CustomDrawerListTile(
                  icon: FontAwesomeIcons.info,
                  text: '    Sobre o App',
                  onTap: () {},
                ),
                const SizedBox(height: 35.0),
                CustomDrawerListTile(
                    icon: FontAwesomeIcons.lockOpen,
                    text: 'Log-In',
                    onTap: () {}),
                const SizedBox(height: 35.0),
                CustomDrawerListTile(
                    icon: FontAwesomeIcons.database,
                    text: 'Conta ADM',
                    onTap: () {}),
                const SizedBox(height: 10.0),
                const Text(
                  'creation and concept: Adilson Tchameia',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
                const Text('stocks officially provided by: CSK Studio',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey)),
              ],
            );
          },
        ),
      ),
    );
  }
}
