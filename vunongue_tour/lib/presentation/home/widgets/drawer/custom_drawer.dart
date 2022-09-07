import 'package:flutter/material.dart';

import 'custom_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CustomDrawerHeader(),
            SizedBox(height: 10.0),
            // CustomDrawerListTile(),
            SizedBox(height: 120.0),
            Text(
              'developed by: Adilson Tchameia',
              style: TextStyle(fontSize: 10.0, color: Colors.grey),
            ),
            Text('stocks provided by: CSK Studio',
                style: TextStyle(fontSize: 10.0, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
