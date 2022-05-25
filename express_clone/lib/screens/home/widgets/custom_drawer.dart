import 'package:express_clone/screens/about/about_mcx.dart';
import 'package:express_clone/screens/activities/activities.dart';
import 'package:express_clone/screens/card_managment/card_managment.dart';
import 'package:express_clone/screens/configurations/settings.dart';
import 'package:express_clone/screens/customer_care/customer_care.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';
import 'custom_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 5.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage())),
                    child: CustomListTile(
                      text: 'Início',
                      icon: Icons.arrow_drop_up,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CardManagment())),
                    child: CustomListTile(
                      text: 'Gestão de Cartões',
                      icon: Icons.payment,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HistoryScreen())),
                    child: CustomListTile(
                      text: 'Actividades',
                      icon: Icons.schedule,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingsScreen())),
                    child: CustomListTile(
                      text: 'Configurações',
                      icon: Icons.settings,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CustomerCare())),
                    child: CustomListTile(
                      text: 'Apoio ao Cliente',
                      icon: Icons.gpp_good_sharp,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutMcx())),
                    child: CustomListTile(
                      text: 'Sobre o MCX Express',
                      icon: Icons.gpp_good_sharp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
