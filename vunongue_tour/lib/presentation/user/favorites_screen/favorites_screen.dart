import 'package:flutter/material.dart';
import 'package:vunongue_tour/presentation/user/home/widgets/customAppBar/custom_app_bar.dart';
import 'package:vunongue_tour/presentation/user/home/widgets/drawer/custom_drawer.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

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
