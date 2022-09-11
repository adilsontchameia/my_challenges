import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../commoms/copyright_sign.dart';
import '../../../../../providers/theme_provider.dart';
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
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                    icon: FontAwesomeIcons.house, text: 'Home', page: 0),
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                    icon: FontAwesomeIcons.heart, text: 'Favourites', page: 1),
                const SizedBox(height: 10.0),
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
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                    icon: FontAwesomeIcons.medal,
                    text: 'Mambos da Banda',
                    page: 2),
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                  icon: FontAwesomeIcons.info,
                  text: '    Sobre o App',
                ),
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                    icon: FontAwesomeIcons.images,
                    text: 'Adicionar Lugar ou Evento',
                    page: 3),
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                    icon: FontAwesomeIcons.userLock,
                    //icon: FontAwesomeIcons.lockOpen,
                    text: 'Log-Out',
                    page: 4),
                const SizedBox(height: 10.0),
                const CustomDrawerListTile(
                    icon: FontAwesomeIcons.database,
                    text: 'Conta ADM',
                    page: 5),
                const SizedBox(height: 5.0),
                const CopyrightSign()
              ],
            );
          },
        ),
      ),
    );
  }
}
