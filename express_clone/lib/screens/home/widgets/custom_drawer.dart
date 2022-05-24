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
                  CustomListTile(
                      text: 'Início',
                      icon: Icons.arrow_drop_up,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Gestão de Cartões',
                      icon: Icons.payment,
                      function: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          )),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Actividades',
                      icon: Icons.schedule,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Configurações',
                      icon: Icons.settings,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Apoio ao Cliente',
                      icon: Icons.gpp_good_sharp,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                  SizedBox(height: 5.0),
                  CustomListTile(
                      text: 'Sobre o MCX Express',
                      icon: Icons.gpp_good_sharp,
                      function: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
