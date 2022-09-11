import 'package:flutter/material.dart';

import '../home/widgets/customAppBar/custom_app_bar.dart';
import '../home/widgets/drawer/custom_drawer.dart';

class MambosDaBandaScreen extends StatelessWidget {
  const MambosDaBandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(text: 'Favorites Places'),
        preferredSize: Size.fromHeight(50.0),
      ),
      drawer: CustomDrawer(),
    );
  }
}
